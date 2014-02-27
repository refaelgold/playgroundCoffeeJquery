#chp011
(($) ->
  $.fn.slider = (options) ->
    defaults =
      duration: 1000
      animationDelay: 5000

    settings = $.extend({}, defaults, options)
    @each ->

      # store some initial variables
      $slider = $(this)
      $sliderList = $slider.children("ul")
      $sliderItems = $sliderList.children("li")
      $allButtons = $slider.find(".button")
      $buttons =
        forward: $allButtons.filter(".forward")
        back: $allButtons.filter(".back")

      $index = $(".index")
      imageWidth = $sliderItems.first().children("img").width()
      endMargin = -(($sliderItems.length - 1) * imageWidth)
      totalImages = $sliderItems.length
      currentIndex = 1
      isPaused = false
      animateSlider = (direction, callback) ->
        $sliderList.stop(true, true).animate
          "margin-left": direction + "=" + imageWidth
        , settings.duration, ->
          increment = ((if direction is "+" then -1 else 1))
          updateIndex currentIndex + increment
          callback()  if callback and typeof callback is "function"
          return

        return

      animateSliderToMargin = (margin, callback) ->
        $sliderList.stop(true, true).animate
          "margin-left": margin
        , settings.duration, callback
        return

      getLeftMargin = ->
        parseInt $sliderList.css("margin-left"), 10

      isAtBeginning = ->
        getLeftMargin() >= 0

      isAtEnd = ->
        getLeftMargin() <= endMargin

      updateIndex = (newIndex) ->
        currentIndex = newIndex
        $index.text currentIndex
        return

      triggerSlider = (direction, callback) ->
        isBackButton = (direction is "+")
        if not isBackButton and isAtEnd()
          animateSliderToMargin 0, callback
          updateIndex 1
        else if isBackButton and isAtBeginning()
          animateSliderToMargin endMargin, callback
          updateIndex totalImages
        else
          animateSlider direction, callback
        return

      automaticSlide = ->
        timer = setTimeout(->
          triggerSlider "-", ->
            automaticSlide()
            return

          return
        , settings.animationDelay)
        return

      timer = setTimeout(automaticSlide, settings.animationDelay)
      resetTimer = ->
        clearTimeout timer  if timer
        timer = setTimeout(automaticSlide, 30000)
        return

      $allButtons.on "click", (event) ->
        resetTimer()
        isBackButton = $(this).hasClass("back")
        triggerSlider ((if isBackButton then "+" else "-"))
        event.preventDefault()
        return

      $(document.documentElement).on "keyup", (event) ->
        if event.keyCode is 37
          resetTimer()
          triggerSlider "+"
        else if event.keyCode is 39
          resetTimer()
          triggerSlider "-"
        return

      return


  return
) jQuery



#activate slider
$ ->
  $(".slider").slider()
  return
