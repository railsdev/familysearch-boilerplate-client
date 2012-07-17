mediator = require 'mediator'
User = require 'models/user'
utils = require 'lib/utils'

# logging in involves calling FamilySearch, which subsequently reloads the application
# so a separate login event isn't needed; login status is determined as soon as the logged-in user is resolved
module.exports = class LoggedInUser extends User
  url: '/users/me'

  initialize: (attributes, options) ->
    super
    @initDeferred()
    @isLoggedIn = false
    @fetch
      success: (model, response) =>
        @isLoggedIn = true
        @resolve()
      error: (model, response) =>
        @resolve()

  logout: ->
    @clear()
    @isLoggedIn = false
    utils.expireCookie 'connect.sess'
    mediator.publish 'logout'
