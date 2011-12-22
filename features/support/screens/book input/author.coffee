class AuthorScreen extends Screen
  anchor: -> view.navigationBars()["Author"]
  
  constructor: ->
    super 'author'
    
    extend @elements,
    'Save' : -> view.navigationBars()[0].buttons()["Save"]
    
    extend @actions,
    'Type "([^"]*)"$': (text) ->
      field = view.textFields()[0]
      field.setValue text