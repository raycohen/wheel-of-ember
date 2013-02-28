Wheel.MainController = Ember.Controller.extend
  wordLengthsInput: "5 2 5"
  wordLengths: (->
    @get('wordLengthsInput')?.split(' ') || []
  ).property('wordLengthsInput')
