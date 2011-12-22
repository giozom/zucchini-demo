class BooksScreen extends Screen
  anchor: -> view.navigationBars()["Books"]
  
  constructor: ->
    super 'books'
    
    extend @elements,
    'Edit' : -> view.navigationBars()[0].buttons()["Edit"],
    'Add'  : -> view.navigationBars()[0].buttons()["Add"]
    
    extend @actions,
    'Scroll to "([^"]*)"$': (elementName) ->
      view.tableViews()[0].scrollToElementWithName(elementName)
      
    'Delete a row "([^"]*)"$': (rowName) ->
      view.tableViews()[0].cells()[rowName].switches()[0].setValue(true);
      view.tableViews()[0].cells()[rowName].buttons()[0].tap();