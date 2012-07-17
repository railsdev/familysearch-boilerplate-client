mediator = require 'mediator'
View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  template: template
  id: 'header'
  className: 'header'
  container: '#header-container'
  autoRender: true

  initialize: ->
    super
    @subscribeEvent 'logout', @render

  render: ->
    super
    console.log 'render header', @model

  getTemplateData: ->
    data = super
    data.isLoggedIn = @model.isLoggedIn
    console.log 'template data', data
    data
