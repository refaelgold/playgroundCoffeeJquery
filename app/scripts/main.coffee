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






#contain all the p on chp 006
pContainer=$ '.p_holder'


#append to body p element
pContainer.on("click", "p",->
  alert "Hello World"
)


$("<p />",
  text: "Paragraph006"
).appendTo pContainer



boxRed=$ '.mainBox'
innerBoxElement=$ '.innerElement'
boxRed.on "click", ->
  alert "BOX"
  return

innerBoxElement.on "click",(e)->
  alert "Inner Box Element"
  e.stopPropagation();
  return


linkHolder= $ ".linkHolder"

linkHolder.on "click" ,"a", (e)->
  e.preventDefault();
  linkHolder.children('a').css "color", "green"




#make your own event- we use it for chaing events. we need "click,hover,focus" to use the second elment for change
#1.create the two buttons for the event
#2.call from first button to second button for change with trigger functionality
#3.call the event whatever you want for change
#4.use the behavior of the trigger.

first_line=$ '.button001'
second_line=$ '.button002'



first_line.on "click", ->

  second_line.trigger "colorChangeToBlue"
  return


#customize trigger
second_line.on "colorChangeToBlue", ->
  second_line.css "color", "blue"
  return





#accordion second edition
accordion = $("#accordion")
headings = $("h2")
paragraphs = $("p")
paragraphs.not(":first").hide()
accordion.on "click", "h2", ->
  t = $(this)
  tPara = t.next()
  return  if tPara.is(":visible")
  paragraphs.slideUp "normal"
  tPara.slideDown "normal"
  return
