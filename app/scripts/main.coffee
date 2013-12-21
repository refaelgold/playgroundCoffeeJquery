#hello chp004
mainHeader=$ 'h1#mainTitle'
menuTop=$ '.nav'
header=$ '.header'
footer=$ '.footer'
testBox=$ '#box001'
slideUpBox=$ '#box002'
triggerForBox=$ '#trigger'
currentElement=$ this


#multiply css
mainHeader.css({
  "color" : "red"
  "font-size" : "50px"
})



#better use add/remove class

if !mainHeader.hasClass 'extraTitleClass'
  mainHeader.addClass 'extraTitleClass'

if !menuTop.hasClass 'show' and !header.hasClass 'show' and !footer.hasClass 'show'
  menuTop.addClass 'hide'
  header.addClass 'hide'
  footer.addClass 'hide'

testBox.animate({
  "opacity":0
  "left":500
  "top":100
},5000 , ->
  console.log "END OF ANIMATE"
)

#slideUpBox

testBox.attr({
  'style':''
})

triggerForBox.on("click",->
  slideUpBox.slideToggle();
)



#remove elemnt
$('p').remove()
$('h1').empty().text("this is a new header")
$('h1').wrap '<hgroup></hgroup>' #wrap the elemnt
$('h1').unwrap '<hgroup></hgroup>' #unwrap the elemnt
$('.childen').wrapAll '<div/>' #wrap ground of  elemnts

newP=$ '<p></p>' , ({
  'text' : "hello worldljds"
  'class' : 'newP',
})

$("h1").append(newP)





