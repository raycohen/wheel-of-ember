Wheel.LetterToggleView = Ember.View.extend
  templateName: 'letter_toggle'
  classNames: 'letter-toggle'
  classNameBindings: ['used']
  click: ->
    @toggleProperty('used')
