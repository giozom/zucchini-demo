class BookTitleScreen extends Screen
  anchor: -> view.navigationBars()["Book Title"]
  
  constructor: ->
    super 'book-title'
    
    extend @elements,
    'Save' : -> view.navigationBars()[0].buttons()["Save"]
    
    extend @actions,
    'Type "([^"]*)"$': (text) ->
      field = view.textFields()[0]
      field.setValue text