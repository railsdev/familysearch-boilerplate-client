_ = require 'underscore'

config =
  apiRoot: '/api/v1'

_.extend config, try
  require 'config_production'  # either production or development config should exist
catch error
  require 'config_development'

module.exports = config
