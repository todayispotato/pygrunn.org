'use strict'

ticketsapp = angular.module("ticketsapp")

###
Settings about currencies.
###
ticketsapp.constant("currencies", {
  "": "",
  "EUR": "€"
})

###
Settings about product and payment methods.
###
ticketsapp.constant("settings", {
  "product": {
    "name": "PyGrunn 2014",
    "price": {
      "amount": "25.00",
      "currency": "EUR"
    }
  },
  "paymentMethods": [
    "iDeal",
    "Mastercard",
    "Visa"
  ]
})
