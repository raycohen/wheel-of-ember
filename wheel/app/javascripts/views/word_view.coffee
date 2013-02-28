Wheel.WordView = Ember.View.extend
  classNames: ['word']
  templateName: 'word'
  letters: []
  didInsertElement: ->
    @_super()
    console.log("Added WordView with #{@get('wordLength')}")

  letters: (->
    list = []
    return list unless @get('wordLength')

    num = parseInt @get('wordLength'), 10

    while num > 0
      list.push("?")
      num -= 1

    list
  ).property('wordLength')
