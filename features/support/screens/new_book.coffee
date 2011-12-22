class NewBookScreen extends Screen
  anchor: -> view.navigationBars()["New Book"]
  
  constructor: ->
    super 'new-book'
    
    extend @elements,
    'Save' : -> view.navigationBars()[0].buttons()["Save"]
    
    extend @elements,
    'Title'     : -> view.tableViews()[0].cells()[0],
    'Author'    : -> view.tableViews()[0].cells()[1]