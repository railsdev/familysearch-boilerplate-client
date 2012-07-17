template = require 'views/templates/login'
PageView = require 'views/base/page_view'

module.exports = class HomeView extends PageView
  template: template
  className: 'login'
