# This is your main javascript file. You can use write your entire application
# in this file if you like. Files are compiled into minispade modules
# based on the file name. All JS files inside "app/javascripts" are
# automatically prefixed with your application name. You can require
# this file like so:
#
#   require('app')
#
# This file makes all the code available. Your app is initialized in the
# boot file. Here's an example
#
#   require('models')
#   require('views')
#   require('controllers')
#   require('helpers')
#
# Your application begins here...

Wheel = Ember.Application.create()
window.Wheel = Wheel

Wheel.Router.map ->
  @route('main')

Wheel.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('main')

require 'controllers/main_controller'
require 'views/main_view'
require 'views/word_view'
require 'views/used_letter_view'
require 'views/letter_toggle_view'
