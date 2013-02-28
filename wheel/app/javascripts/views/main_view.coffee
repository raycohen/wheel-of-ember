Wheel.MainView = Ember.View.extend
  lengthsTextArea: Ember.TextArea.extend
    valueDidChange: ->
      alert(@get('value'))
