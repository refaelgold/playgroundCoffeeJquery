#hello chp007




#allow background color on animate
((d) ->
  b = (f) ->
    e = undefined
    return f  if f and f.constructor is Array and f.length is 3
    if e = /rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/.exec(f)
      return [
        parseInt(e[1])
        parseInt(e[2])
        parseInt(e[3])
      ]
    if e = /rgb\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*\)/.exec(f)
      return [
        parseFloat(e[1]) * 2.55
        parseFloat(e[2]) * 2.55
        parseFloat(e[3]) * 2.55
      ]
    if e = /#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/.exec(f)
      return [
        parseInt(e[1], 16)
        parseInt(e[2], 16)
        parseInt(e[3], 16)
      ]
    if e = /#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/.exec(f)
      return [
        parseInt(e[1] + e[1], 16)
        parseInt(e[2] + e[2], 16)
        parseInt(e[3] + e[3], 16)
      ]
    return a.transparent  if e = /rgba\(0, 0, 0, 0\)/.exec(f)
    a[d.trim(f).toLowerCase()]
  c = (g, e) ->
    f = undefined
    loop
      f = d.css(g, e)
      break  if f isnt "" and f isnt "transparent" or d.nodeName(g, "body")
      e = "backgroundColor"
      break unless g = g.parentNode
    b f
  d.each [
    "backgroundColor"
    "borderBottomColor"
    "borderLeftColor"
    "borderRightColor"
    "borderTopColor"
    "color"
    "outlineColor"
  ], (f, e) ->
    d.fx.step[e] = (g) ->
      unless g.colorInit
        g.start = c(g.elem, e)
        g.end = b(g.end)
        g.colorInit = true
      g.elem.style[e] = "rgb(" + [
        Math.max(Math.min(parseInt((g.pos * (g.end[0] - g.start[0])) + g.start[0]), 255), 0)
        Math.max(Math.min(parseInt((g.pos * (g.end[1] - g.start[1])) + g.start[1]), 255), 0)
        Math.max(Math.min(parseInt((g.pos * (g.end[2] - g.start[2])) + g.start[2]), 255), 0)
      ].join(",") + ")"
      return

    return

  a =
    aqua: [
      0
      255
      255
    ]
    azure: [
      240
      255
      255
    ]
    beige: [
      245
      245
      220
    ]
    black: [
      0
      0
      0
    ]
    blue: [
      0
      0
      255
    ]
    brown: [
      165
      42
      42
    ]
    cyan: [
      0
      255
      255
    ]
    darkblue: [
      0
      0
      139
    ]
    darkcyan: [
      0
      139
      139
    ]
    darkgrey: [
      169
      169
      169
    ]
    darkgreen: [
      0
      100
      0
    ]
    darkkhaki: [
      189
      183
      107
    ]
    darkmagenta: [
      139
      0
      139
    ]
    darkolivegreen: [
      85
      107
      47
    ]
    darkorange: [
      255
      140
      0
    ]
    darkorchid: [
      153
      50
      204
    ]
    darkred: [
      139
      0
      0
    ]
    darksalmon: [
      233
      150
      122
    ]
    darkviolet: [
      148
      0
      211
    ]
    fuchsia: [
      255
      0
      255
    ]
    gold: [
      255
      215
      0
    ]
    green: [
      0
      128
      0
    ]
    indigo: [
      75
      0
      130
    ]
    khaki: [
      240
      230
      140
    ]
    lightblue: [
      173
      216
      230
    ]
    lightcyan: [
      224
      255
      255
    ]
    lightgreen: [
      144
      238
      144
    ]
    lightgrey: [
      211
      211
      211
    ]
    lightpink: [
      255
      182
      193
    ]
    lightyellow: [
      255
      255
      224
    ]
    lime: [
      0
      255
      0
    ]
    magenta: [
      255
      0
      255
    ]
    maroon: [
      128
      0
      0
    ]
    navy: [
      0
      0
      128
    ]
    olive: [
      128
      128
      0
    ]
    orange: [
      255
      165
      0
    ]
    pink: [
      255
      192
      203
    ]
    purple: [
      128
      0
      128
    ]
    violet: [
      128
      0
      128
    ]
    red: [
      255
      0
      0
    ]
    silver: [
      192
      192
      192
    ]
    white: [
      255
      255
      255
    ]
    yellow: [
      255
      255
      0
    ]
    transparent: [
      255
      255
      255
    ]

  return
) jQuery

#this script is for animate


#vars
box=$ "#box"
animateClickEffect=$ "#animate"
fadeToggleClickEffect=$ "#fadeToggleBtn"
slideToggleEffect=$ "#slideToggleBtn"
customAnimateClick=$ "#customAnimate"

animateClickEffect.on "click",->
  box.animate
    height: 300
    width: 300,
    backgroundColor:"yellow"
  , 5000,"swing" ,  ->
    console.log "finished"

    return


customAnimateClick.on "click",->
  box.animate
    height: 300
    width: 300,
    backgroundColor:"yellow"
  , 5000,"swing" ,  ->
    console.log "finished"
  box.hide 2000
  box.show 2000
  box.animate
    height: 30,
    width: 30,
    backgroundColor:"red"
    ,5000 ,"linear" , ->
    console.log "done"

fadeToggleClickEffect.on "click",->
  box.stop(true,true).fadeToggle 3000

slideToggleEffect.on "click",->
  box.slideToggle 2000;






#accordin better
$ ->
  accordion = $("#accordion")
  headings = $("h2")
  paragraphs = $("p")
  paragraphs.not(":first").hide()
  accordion.on "click", "h2", ->
    t = $(this)
    tPara = t.next()
    tPara.trigger "showParagraph"  unless tPara.is(":visible")
    return

  accordion.on "showParagraph", "p", ->
    paragraphs.stop(true, true).slideUp 1000, "linear"
    $(this).stop(true, true).slideDown 1000, "linear"
    return

  return






#
#* EASYFADER - An Ultralight Fading Slideshow For Responsive Layouts
#* Version: 1.0
#* Author: Patrick Kunka
#* Copyright 2012-2013 Patrick Kunka
#
(($) ->
  prefix = (el) ->
    prefixes = [
      "Webkit"
      "Moz"
      "O"
      "ms"
    ]
    i = 0

    while i < prefixes.length
      return "-" + prefixes[i].toLowerCase() + "-"  if prefixes[i] + "Transition" of el.style
      i++
    (if "transition" of el.style then "" else false)
  methods = init: (settings) ->
    @each ->
      animateSlides = (activeNdx, newNdx) ->
        cleanUp = ->
          $slides.eq(activeNdx).removeAttr "style"
          activeSlide = newNdx
          fading = false
          waitForNext()
          return
        return false  if fading or activeNdx is newNdx
        fading = true
        $pagers.removeClass("active").eq(newSlide).addClass "active"
        $slides.eq(activeNdx).css "z-index", 3
        $slides.eq(newNdx).css
          "z-index": 2
          opacity: 1

        unless prefix
          $slides.eq(activeNdx).animate
            opacity: 0
          , config.fadeDur, ->
            cleanUp()
            return

        else
          styles = {}
          styles[prefix + "transition"] = "opacity " + config.fadeDur + "ms"
          styles["opacity"] = 0
          $slides.eq(activeNdx).css styles
          fadeTimer = setTimeout(->
            cleanUp()
            return
          , config.fadeDur)
        return
      changeSlides = (target) ->
        if target is "next"
          newSlide = activeSlide + 1
          newSlide = 0  if newSlide > totalSlides - 1
        else if target is "prev"
          newSlide = activeSlide - 1
          newSlide = totalSlides - 1  if newSlide < 0
        else
          newSlide = target
        animateSlides activeSlide, newSlide
        return
      waitForNext = ->
        slideTimer = setTimeout(->
          changeSlides "next"
          return
        , config.slideDur)
        return
      config =
        slideDur: 7000
        fadeDur: 800

      $.extend config, settings  if settings
      @config = config
      $container = $(this)
      slideSelector = ".slide"
      fading = false
      slideTimer = undefined
      activeSlide = undefined
      newSlide = undefined
      $slides = $container.find(slideSelector)
      totalSlides = $slides.length
      $pagerList = $container.find(".pager_list")
      prefix = prefix($container[0])
      i = 0

      while i < totalSlides
        $pagerList.append "<li class=\"page\" data-target=\"" + i + "\">" + i + "</li>"
        i++
      $container.find(".page").bind "click", ->
        target = $(this).attr("data-target")
        clearTimeout slideTimer
        changeSlides target
        return

      $pagers = $pagerList.find(".page")
      $slides.eq(0).css "opacity", 1
      $pagers.eq(0).addClass "active"
      activeSlide = 0
      waitForNext()
      return


  $.fn.easyFader = (settings) ->
    methods.init.apply this, arguments_

  return
) jQuery
$ ->
  $("#Fader").easyFader
    slideDur: 6000
    fadeDur: 800

  return
