#hello chp 005



#click event
clickButton=$ ".clickMe"

clickButton.on('click',(e)->
  console.log e
  console.log "the x of the button is:"+e.pageX
  console.log "the y of the button is:"+e.pageY
)


#form Elements
basicForm=$ "#formBasicEvents"
inputTextFields=$ "input:text"

basicForm.on('submit',->
  console.log "the form as been submitted"
# can be send the form only ONCE
  basicForm.off "submit"

)



#two event at once
inputTextFields.on('focus',->
  $(this).addClass "redBorder"
  console.log "i am on focus-you can write up whatever you want!"
).on('blur',->
  $(this).removeClass "redBoder"
  console.log "i'm out! stop writing!!"
)
#####################################################







#hover and unhover event
mainTitleOnPage=$ "#mainContainer h1"
mainTitleOnPage.on('mouseenter',->
  console.log "hover!!"
  return;
).on('mouseleave',->
  console.log "unhover!!"
)



