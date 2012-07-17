Chaplin = require 'chaplin'
mediator = require 'mediator'
routes = require 'routes'
config = require 'config'
HeaderController = require 'controllers/header_controller'
LoggedInUser = require 'models/logged_in_user'
Layout = require 'views/layout'

# The application object
module.exports = class Application extends Chaplin.Application
  # Set your application name here so the document title is set to
  # “Controller title – Site title” (see Layout#adjustTitle)
  title: 'FamilySearch Boilerplate'

  initialize: ->
    super

    console.log 'config=',config unless config.production

    # set up for mongoose on server
    Backbone.Model.prototype.idAttribute = "_id";

    # set up ajax calls
    $.ajaxPrefilter (options, originalOptions, jqXHR ) ->
      options.xhrFields =
        withCredentials: true
      options.url = config.server + config.apiRoot + options.url
      console.log('ajax url='+options.url) unless config.production

    # Initialize core components
    @initDispatcher()
    @initLayout()
    @initMediator()

    # Application-specific scaffold
    @initControllers()

    # Register all routes and start routing
    @initRouter routes
    # You might pass Router/History options as the second parameter.
    # Chaplin enables pushState per default and Backbone uses / as
    # the root per default. You might change that in the options
    # if necessary:
    # @initRouter routes, pushState: false, root: '/subdir/'

    # let's log all events so we can see what's going on
    mediator.subscribe 'all', @log, this unless config.production

    # Freeze the application instance to prevent further changes
    Object.freeze? this

  log: ->
    console.log('event=', arguments)

  # Override standard layout initializer
  # ------------------------------------
  initLayout: ->
    # Use an application-specific Layout class. Currently this adds
    # no features to the standard Chaplin Layout, it’s an empty placeholder.
    @layout = new Layout {@title}

  # Instantiate common controllers
  # ------------------------------
  initControllers: ->
    # These controllers are active during the whole application runtime.
    # You don’t need to instantiate all controllers here, only special
    # controllers which do not to respond to routes. They may govern models
    # and views which are needed the whole time, for example header, footer
    # or navigation views.
    # e.g. new NavigationController()
    new HeaderController()

  # Create additional mediator properties
  # -------------------------------------
  initMediator: ->
    # Create a user property
    mediator.user = new LoggedInUser()
    # Add additional application-specific properties and methods
    # Seal the mediator
    mediator.seal()
