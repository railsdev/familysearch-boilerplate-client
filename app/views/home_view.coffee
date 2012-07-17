template = require 'views/templates/home'
PageView = require 'views/base/page_view'

module.exports = class HomeView extends PageView
  template: template
  className: 'home-page'
