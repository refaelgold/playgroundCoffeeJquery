#hello chp006

#nav element of the menu
headerNavSelector = $ '.nav'


i = 1

headerNavSelector.on('click', 'li', ->
  console.log 'header element is clicked for the ' + i + ' time'
  i++
)


#always take the last element
headerNavSelector.append('<li><a>portfilo</a></li>');


