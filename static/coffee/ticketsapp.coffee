'use strict'

ticketsapp = angular.module("ticketsapp", ["ngRoute", "ngCookies"])

ticketsapp.constant "countries", [
    {'code': 'AD', 'name': 'Andorra'},
    {'code': 'AE', 'name': 'United Arab Emirates'},
    {'code': 'AF', 'name': 'Afghanistan'},
    {'code': 'AG', 'name': 'Antigua and Barbuda'},
    {'code': 'AI', 'name': 'Anguilla'},
    {'code': 'AL', 'name': 'Albania'},
    {'code': 'AM', 'name': 'Armenia'},
    {'code': 'AN', 'name': 'Netherlands Antilles'},
    {'code': 'AO', 'name': 'Angola'},
    {'code': 'AQ', 'name': 'Antarctica'},
    {'code': 'AR', 'name': 'Argentina'},
    {'code': 'AS', 'name': 'American Samoa'},
    {'code': 'AT', 'name': 'Austria'},
    {'code': 'AU', 'name': 'Australia'},
    {'code': 'AW', 'name': 'Aruba'},
    {'code': 'AX', 'name': 'Åland Islands'},
    {'code': 'AZ', 'name': 'Azerbaijan'},
    {'code': 'BA', 'name': 'Bosnia and Herzegovina'},
    {'code': 'BB', 'name': 'Barbados'},
    {'code': 'BD', 'name': 'Bangladesh'},
    {'code': 'BE', 'name': 'Belgium'},
    {'code': 'BF', 'name': 'Burkina Faso'},
    {'code': 'BG', 'name': 'Bulgaria'},
    {'code': 'BH', 'name': 'Bahrain'},
    {'code': 'BI', 'name': 'Burundi'},
    {'code': 'BJ', 'name': 'Benin'},
    {'code': 'BL', 'name': 'Saint Barthélemy'},
    {'code': 'BM', 'name': 'Bermuda'},
    {'code': 'BN', 'name': 'Brunei'},
    {'code': 'BO', 'name': 'Bolivia'},
    {'code': 'BQ', 'name': 'Caribbean Netherlands'},
    {'code': 'BR', 'name': 'Brazil'},
    {'code': 'BS', 'name': 'The Bahamas'},
    {'code': 'BT', 'name': 'Bhutan'},
    {'code': 'BV', 'name': 'Bouvet Island'},
    {'code': 'BW', 'name': 'Botswana'},
    {'code': 'BY', 'name': 'Belarus'},
    {'code': 'BZ', 'name': 'Belize'},
    {'code': 'CA', 'name': 'Canada'},
    {'code': 'CC', 'name': 'Cocos (Keeling) Islands'},
    {'code': 'CD', 'name': 'Democratic Republic of the Congo'},
    {'code': 'CF', 'name': 'Central African Republic'},
    {'code': 'CG', 'name': 'Republic of the Congo'},
    {'code': 'CH', 'name': 'Switzerland'},
    {'code': 'CI', 'name': 'Côte d\'Ivoire'},
    {'code': 'CK', 'name': 'Cook Islands'},
    {'code': 'CL', 'name': 'Chile'},
    {'code': 'CM', 'name': 'Cameroon'},
    {'code': 'CN', 'name': 'People\'s Republic of China'},
    {'code': 'CO', 'name': 'Colombia'},
    {'code': 'CR', 'name': 'Costa Rica'},
    {'code': 'CU', 'name': 'Cuba'},
    {'code': 'CV', 'name': 'Cape Verde'},
    {'code': 'CW', 'name': 'Curaçao'},
    {'code': 'CX', 'name': 'Christmas Island'},
    {'code': 'CY', 'name': 'Cyprus'},
    {'code': 'CZ', 'name': 'Czech Republic'},
    {'code': 'DE', 'name': 'Germany'},
    {'code': 'DJ', 'name': 'Djibouti'},
    {'code': 'DK', 'name': 'Denmark'},
    {'code': 'DM', 'name': 'Dominica'},
    {'code': 'DO', 'name': 'Dominican Republic'},
    {'code': 'DZ', 'name': 'Algeria'},
    {'code': 'EC', 'name': 'Ecuador'},
    {'code': 'EE', 'name': 'Estonia'},
    {'code': 'EG', 'name': 'Egypt'},
    {'code': 'EH', 'name': 'Western Sahara'},
    {'code': 'ER', 'name': 'Eritrea'},
    {'code': 'ES', 'name': 'Spain'},
    {'code': 'ET', 'name': 'Ethiopia'},
    {'code': 'FI', 'name': 'Finland'},
    {'code': 'FJ', 'name': 'Fiji'},
    {'code': 'FK', 'name': 'Falkland Islands'},
    {'code': 'FM', 'name': 'Federated States of Micronesia'},
    {'code': 'FO', 'name': 'Faroe Islands'},
    {'code': 'FR', 'name': 'France'},
    {'code': 'GA', 'name': 'Gabon'},
    {'code': 'GB', 'name': 'United Kingdom'},
    {'code': 'GD', 'name': 'Grenada'},
    {'code': 'GE', 'name': 'Georgia'},
    {'code': 'GF', 'name': 'French Guiana'},
    {'code': 'GG', 'name': 'Guernsey'},
    {'code': 'GH', 'name': 'Ghana'},
    {'code': 'GI', 'name': 'Gibraltar'},
    {'code': 'GL', 'name': 'Greenland'},
    {'code': 'GM', 'name': 'The Gambia'},
    {'code': 'GN', 'name': 'Guinea'},
    {'code': 'GP', 'name': 'Guadeloupe'},
    {'code': 'GQ', 'name': 'Equatorial Guinea'},
    {'code': 'GR', 'name': 'Greece'},
    {'code': 'GS', 'name': 'South Georgia and the South Sandwich Islands'},
    {'code': 'GT', 'name': 'Guatemala'},
    {'code': 'GU', 'name': 'Guam'},
    {'code': 'GW', 'name': 'Guinea-Bissau'},
    {'code': 'GY', 'name': 'Guyana'},
    {'code': 'HK', 'name': 'Hong Kong'},
    {'code': 'HM', 'name': 'Heard Island and McDonald Islands'},
    {'code': 'HN', 'name': 'Honduras'},
    {'code': 'HR', 'name': 'Croatia'},
    {'code': 'HT', 'name': 'Haiti'},
    {'code': 'HU', 'name': 'Hungary'},
    {'code': 'ID', 'name': 'Indonesia'},
    {'code': 'IE', 'name': 'Republic of Ireland'},
    {'code': 'IL', 'name': 'Israel'},
    {'code': 'IM', 'name': 'Isle of Man'},
    {'code': 'IN', 'name': 'India'},
    {'code': 'IO', 'name': 'British Indian Ocean Territory'},
    {'code': 'IQ', 'name': 'Iraq'},
    {'code': 'IR', 'name': 'Iran'},
    {'code': 'IS', 'name': 'Iceland'},
    {'code': 'IT', 'name': 'Italy'},
    {'code': 'JE', 'name': 'Jersey'},
    {'code': 'JM', 'name': 'Jamaica'},
    {'code': 'JO', 'name': 'Jordan'},
    {'code': 'JP', 'name': 'Japan'},
    {'code': 'KE', 'name': 'Kenya'},
    {'code': 'KG', 'name': 'Kyrgyzstan'},
    {'code': 'KH', 'name': 'Cambodia'},
    {'code': 'KI', 'name': 'Kiribati'},
    {'code': 'KM', 'name': 'Comoros'},
    {'code': 'KN', 'name': 'Saint Kitts and Nevis'},
    {'code': 'KP', 'name': 'North Korea'},
    {'code': 'KR', 'name': 'South Korea'},
    {'code': 'KW', 'name': 'Kuwait'},
    {'code': 'KY', 'name': 'Cayman Islands'},
    {'code': 'KZ', 'name': 'Kazakhstan'},
    {'code': 'LA', 'name': 'Laos'},
    {'code': 'LB', 'name': 'Lebanon'},
    {'code': 'LC', 'name': 'Saint Lucia'},
    {'code': 'LI', 'name': 'Liechtenstein'},
    {'code': 'LK', 'name': 'Sri Lanka'},
    {'code': 'LR', 'name': 'Liberia'},
    {'code': 'LS', 'name': 'Lesotho'},
    {'code': 'LT', 'name': 'Lithuania'},
    {'code': 'LU', 'name': 'Luxembourg'},
    {'code': 'LV', 'name': 'Latvia'},
    {'code': 'LY', 'name': 'Libya'},
    {'code': 'MA', 'name': 'Morocco'},
    {'code': 'MC', 'name': 'Monaco'},
    {'code': 'MD', 'name': 'Moldova'},
    {'code': 'ME', 'name': 'Montenegro'},
    {'code': 'MF', 'name': 'Saint Martin (France)'},
    {'code': 'MG', 'name': 'Madagascar'},
    {'code': 'MH', 'name': 'Marshall Islands'},
    {'code': 'MK', 'name': 'Republic of Macedonia'},
    {'code': 'ML', 'name': 'Mali'},
    {'code': 'MM', 'name': 'Burma'},
    {'code': 'MN', 'name': 'Mongolia'},
    {'code': 'MO', 'name': 'Macau'},
    {'code': 'MP', 'name': 'Northern Mariana Islands'},
    {'code': 'MQ', 'name': 'Martinique'},
    {'code': 'MR', 'name': 'Mauritania'},
    {'code': 'MS', 'name': 'Montserrat'},
    {'code': 'MT', 'name': 'Malta'},
    {'code': 'MU', 'name': 'Mauritius'},
    {'code': 'MV', 'name': 'Maldives'},
    {'code': 'MW', 'name': 'Malawi'},
    {'code': 'MX', 'name': 'Mexico'},
    {'code': 'MY', 'name': 'Malaysia'},
    {'code': 'MZ', 'name': 'Mozambique'},
    {'code': 'NA', 'name': 'Namibia'},
    {'code': 'NC', 'name': 'New Caledonia'},
    {'code': 'NE', 'name': 'Niger'},
    {'code': 'NF', 'name': 'Norfolk Island'},
    {'code': 'NG', 'name': 'Nigeria'},
    {'code': 'NI', 'name': 'Nicaragua'},
    {'code': 'NL', 'name': 'Netherlands'},
    {'code': 'NO', 'name': 'Norway'},
    {'code': 'NP', 'name': 'Nepal'},
    {'code': 'NR', 'name': 'Nauru'},
    {'code': 'NU', 'name': 'Niue'},
    {'code': 'NZ', 'name': 'New Zealand'},
    {'code': 'OM', 'name': 'Oman'},
    {'code': 'PA', 'name': 'Panama'},
    {'code': 'PE', 'name': 'Peru'},
    {'code': 'PF', 'name': 'French Polynesia'},
    {'code': 'PG', 'name': 'Papua New Guinea'},
    {'code': 'PH', 'name': 'Philippines'},
    {'code': 'PK', 'name': 'Pakistan'},
    {'code': 'PL', 'name': 'Poland'},
    {'code': 'PM', 'name': 'Saint Pierre and Miquelon'},
    {'code': 'PN', 'name': 'Pitcairn Islands'},
    {'code': 'PR', 'name': 'Puerto Rico'},
    {'code': 'PS', 'name': 'Palestinian territories'},
    {'code': 'PT', 'name': 'Portugal'},
    {'code': 'PW', 'name': 'Palau'},
    {'code': 'PY', 'name': 'Paraguay'},
    {'code': 'QA', 'name': 'Qatar'},
    {'code': 'RE', 'name': 'Réunion'},
    {'code': 'RO', 'name': 'Romania'},
    {'code': 'RS', 'name': 'Serbia'},
    {'code': 'RU', 'name': 'Russia'},
    {'code': 'RW', 'name': 'Rwanda'},
    {'code': 'SA', 'name': 'Saudi Arabia'},
    {'code': 'SB', 'name': 'Solomon Islands'},
    {'code': 'SC', 'name': 'Seychelles'},
    {'code': 'SD', 'name': 'Sudan'},
    {'code': 'SE', 'name': 'Sweden'},
    {'code': 'SG', 'name': 'Singapore'},
    {'code': 'SH', 'name': 'Saint Helena'},
    {'code': 'SI', 'name': 'Slovenia'},
    {'code': 'SJ', 'name': 'Svalbard and Jan Mayen'},
    {'code': 'SK', 'name': 'Slovakia'},
    {'code': 'SL', 'name': 'Sierra Leone'},
    {'code': 'SM', 'name': 'San Marino'},
    {'code': 'SN', 'name': 'Senegal'},
    {'code': 'SO', 'name': 'Somalia'},
    {'code': 'SR', 'name': 'Suriname'},
    {'code': 'SS', 'name': 'South Sudan'},
    {'code': 'ST', 'name': 'São Tomé and Príncipe'},
    {'code': 'SV', 'name': 'El Salvador'},
    {'code': 'SX', 'name': 'Sint Maarten (Dutch part)'},
    {'code': 'SY', 'name': 'Syria'},
    {'code': 'SZ', 'name': 'Swaziland'},
    {'code': 'TC', 'name': 'Turks and Caicos Islands'},
    {'code': 'TD', 'name': 'Chad'},
    {'code': 'TF', 'name': 'French Southern and Antarctic Lands'},
    {'code': 'TG', 'name': 'Togo'},
    {'code': 'TH', 'name': 'Thailand'},
    {'code': 'TJ', 'name': 'Tajikistan'},
    {'code': 'TK', 'name': 'Tokelau'},
    {'code': 'TL', 'name': 'East Timor'},
    {'code': 'TM', 'name': 'Turkmenistan'},
    {'code': 'TN', 'name': 'Tunisia'},
    {'code': 'TO', 'name': 'Tonga'},
    {'code': 'TR', 'name': 'Turkey'},
    {'code': 'TT', 'name': 'Trinidad and Tobago'},
    {'code': 'TV', 'name': 'Tuvalu'},
    {'code': 'TW', 'name': 'Taiwan (Republic of China)'},
    {'code': 'TZ', 'name': 'Tanzania'},
    {'code': 'UA', 'name': 'Ukraine'},
    {'code': 'UG', 'name': 'Uganda'},
    {'code': 'UM', 'name': 'United States Minor Outlying Islands'},
    {'code': 'US', 'name': 'United States'},
    {'code': 'UY', 'name': 'Uruguay'},
    {'code': 'UZ', 'name': 'Uzbekistan'},
    {'code': 'VA', 'name': 'Vatican City'},
    {'code': 'VC', 'name': 'Saint Vincent and the Grenadines'},
    {'code': 'VE', 'name': 'Venezuela'},
    {'code': 'VG', 'name': 'British Virgin Islands'},
    {'code': 'VI', 'name': 'United States Virgin Islands'},
    {'code': 'VN', 'name': 'Vietnam'},
    {'code': 'VU', 'name': 'Vanuatu'},
    {'code': 'WF', 'name': 'Wallis and Futuna'},
    {'code': 'WS', 'name': 'Samoa'},
    {'code': 'YE', 'name': 'Yemen'},
    {'code': 'YT', 'name': 'Mayotte'},
    {'code': 'ZA', 'name': 'South Africa'},
    {'code': 'ZM', 'name': 'Zambia'},
    {'code': 'ZW', 'name': 'Zimbabwe'}
]

ticketsapp.constant "currencies", {
  "": "",
  "EUR": "€"
}

ticketsapp.filter 'amount', (currencies) ->
  # format the input price to €0.00 EUR
  (input) ->
    amount = parseFloat(input?.amount).toFixed(2)
    if isNaN(amount)
      amount = "0.00"
    cur_symbol = if input?.amount > 0 then currencies[input?.currency] else ''
    cur_code = if input?.amount > 0 then input?.currency else ''
    cur_symbol + amount + ' ' + cur_code if input?

class TicketsController

  @$inject = ["$scope", "$http", "$window", "$routeParams", "$cookies", "$location", "currencies", "countries"]

  constructor: (@scope, @http, @window, @routeParams, @cookies, @location, @currencies, @countries) ->
    @scope.data = {}
    @target = document.querySelector('.spinner-container')
    spinner_options = {lines:11,length:2,width:2,radius:4,corner:1,rotate:0,trail:50,speed:1.3,top:'15px',left:'111px',color:'#312A1E'}
    @spinner = new Spinner(spinner_options)
    @scope.data.confirming = false
    @scope.data.toPay = false
    # flag if payment is successful
    @scope.data.paid = false
    @scope.data.currencies = @currencies
    @scope.data.countries = @countries
    # maximum quantity of products
    @scope.data.maxQuantity = [1..8]
    # info about product, payment methods and countries
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
      ]
    }

    # THIS WILL GO AWAY
    @scope.data.dynamic = {
      "quantity": 0,
      "profile": {
        "first_name": "Spyros",
        "last_name": "Ioakeimidis",
        "email": "spyrosikmd@gmail.com",
        "gender": "1",
        "country_code": "NL",
        "date_of_birth": "1986-12-04",
        "address": "Some 17",
        "zipcode": "9711GE",
        "city": "Groningen"
      }
      "paymentMethod": "Mastercard",
    }
    # /THIS WILL GO AWAY

    @scope.data.total = {
      "amount": "0.00",
      "currency": "EUR"
    }
    @scope.data.totalIncludingCosts = {
      "amount": "0.00",
      "currency": "EUR"
    }
    # when quantity changes, calculate the total
    @scope.$watch "data.dynamic.quantity", (newValue, oldValue) =>
      if newValue isnt oldValue
        total = 0
        total += parseFloat(@scope.data.static.product.price.amount) * newValue
        @scope.data.total.amount = total.toFixed(2)
    # when pages load, check if payment is successful to show success message
    @isPaid()
    # extend the scope to include the methods
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
      @spinner.stop()
    .error (data, status, headers, config) =>
      console.log "error"
      @scope.data.confirming = false
      @spinner.stop()

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
