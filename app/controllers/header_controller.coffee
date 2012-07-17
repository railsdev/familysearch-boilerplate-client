Controller = require 'controllers/base/controller'
mediator = require 'mediator'
HeaderView = require 'views/header_view'

module.exports = class HeaderController extends Controller
  initialize: ->
    super
    @model = mediator.user
    @model.done => # wait for user to be resolved
      @view = new HeaderView({@model})
