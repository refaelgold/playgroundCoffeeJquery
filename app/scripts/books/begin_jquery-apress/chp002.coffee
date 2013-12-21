#if we do "tab" - its does anonymous function automatic.
  #define an element in coffee
  bodyElement=$ 'body'

  #use css method and selector
  $(bodyElement) .css 'background-color','rgb(252, 252, 252)'




  #define a selector in jquery always better then use the original name.
  redBox=$ '#box001'
  redBoxCounterContainer=$ 'span#counter'
  indexCounter=0




  toggleBox = (indexCounter)->

    #must put undefined for cancel the return of the coffeescript
    'undefined'
    $(redBox) .fadeToggle 'slow',->
        indexCounter++
        if indexCounter<10
          redBoxCounterContainer.text indexCounter
          toggleBox indexCounter
          "undefined";
  toggleBox indexCounter