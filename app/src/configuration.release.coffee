@ledger.env = "prod"
@ledger.isProd = ledger.env == "prod"
@ledger.isDev = ledger.env == "dev"

@ledger.config ?= {}

@ledger.config.restClient ?=
  baseUrl = 'https://api02.ledgerwallet.com/'

@ledger.config.syncRestClient ?=
  pullIntervalDelay: 10000
  pullThrottleDelay: 1000
  pushDebounceDelay: 1000

@configureApplication = (app) ->
