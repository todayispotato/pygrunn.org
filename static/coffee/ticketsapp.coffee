'use strict'

ticketsapp = angular.module("ticketsapp", ["ngRoute", "ngCookies"])

ticketsapp.constant "currencies", {
  "": "",
  "EUR": "€"
}

ticketsapp.filter 'amount', (currencies) ->
  (input) ->
    amount = parseFloat(input?.amount).toFixed(2)
    if isNaN(amount)
      amount = "0.00"
    cur_symbol = if input?.amount > 0 then currencies[input?.currency] else ''
    cur_code = if input?.amount > 0 then input?.currency else ''
    cur_symbol + amount + ' ' + cur_code if input?

class TicketsController

  @$inject = ["$scope", "$http", "$window", "$routeParams", "$cookies", "$location", "currencies"]

  constructor: (@scope, @http, @window, @routeParams, @cookies, @location, @currencies) ->
    @scope.data = {}
    @target = document.querySelector('.spinner-container')
    @spinner = new Spinner({lines:13, length: 3, width: 2, radius: 5, corner: 0, rotate: 0, trail: 50, speed: 1.4})
    @scope.data.confirming = false
    @scope.data.toPay = false
    @scope.data.paid = false
    @scope.data.currencies = @currencies
    @scope.data.range = [1..8]
    @scope.data.static = {
      "product": {
        "name": "Regular PyGrunn",
        "price": {
          "amount": "25.00",
          "currency": "EUR"
        }
      },
      "paymentMethods": [
        "iDeal",
        "Mastercard",
        "Visa",
        "AmericanExpress",
        "VisaDebit"
      ],
      "countries": [
        "NL",
        "US"
      ]
    }
    @scope.data.dynamic = {
      "quantity": 0,
      "profile": {
        "first_name": "Spyros",
        "last_name": "Ioakeimidis",
        "email": "spyrosikmd@gmail.com",
        "gender": "1",
        "country_code": "NL",
        "date_of_birth": "1986-12-04"
      }
      "paymentMethod": "Mastercard",
    }
    @scope.data.total = {
      "amount": "0.00",
      "currency": "EUR"
    }
    @scope.data.totalCosts = {
      "amount": "0.00",
      "currency": "EUR"
    }
    @scope.$watch "data.dynamic.quantity", (newValue, oldValue) =>
      if newValue isnt oldValue
        total = 0
        total += parseFloat(@scope.data.static.product.price.amount) * newValue
        @scope.data.total.amount = total.toFixed(2)
    @isPaid()
    angular.extend @scope,
      toConfirm: @toConfirm
      confirm: @confirm
      pay: @pay
      cancel: @cancel
      orderMore: @orderMore

  cancel: =>
    @scope.data.toPay = false

  isPaid: =>
    @scope.data.paid = @routeParams["paid"] is "success" and @cookies.paymentUrl

  thereIsTotal: =>
    parseFloat(@scope.data.total.amount) > 0

  thereIsPayment: =>
    @scope.data.dynamic.paymentMethod isnt ""

  completeProfile: =>
    for key, value of @scope.data.dynamic.profile
      if value is ""
        return false
    return true

  toConfirm: =>
    @thereIsTotal() and @completeProfile() and @thereIsPayment()

  confirm: =>
    @scope.data.confirming = true
    @spinner.spin(@target)
    @http({
      url: "http://10.0.30.198:5000/confirm",
      dataType: "json",
      method: "POST",
      data: @scope.data.dynamic,
      headers: {
        "Content-Type": "application/json"
      }
    })
    .success (data, status, headers, config) =>
      @scope.data.totalCosts = data.payment.amount
      @scope.data.static.paymentUrl = data.payment.payscreen_url
      @cookies.paymentUrl = data.payment.payscreen_url
      @scope.data.confirming = false
      @scope.data.toPay = true
    .error (data, status, headers, config) =>
      console.log "error"
      @scope.data.confirming = false

  pay: =>
    @window.location.href = @scope.data.static.paymentUrl

  orderMore: =>
    @scope.data.paid = false
    delete @cookies.paymentUrl
    @location.url @location.path() + "#tickets"

ticketsapp.controller("TicketsController", TicketsController)

ticketsapp.config ($routeProvider) ->
  $routeProvider
    .when "/", {
      templateUrl: "tickets.html",
      controller: "TicketsController"
    }
