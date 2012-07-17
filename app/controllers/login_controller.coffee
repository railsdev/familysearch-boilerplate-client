mediator = require 'mediator'
Controller = require 'controllers/base/controller'
LoginView = require 'views/login_view'

module.exports = class LoginController extends Controller
  historyURL: 'login'

  login: ->
    @view = new LoginView()

  logout: ->
    mediator.user.logout()
    @redirectTo '/'
