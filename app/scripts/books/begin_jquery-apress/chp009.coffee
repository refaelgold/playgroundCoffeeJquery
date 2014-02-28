#chp009


#define basic plug
$.fn.logId = ->
  @each ->
    console.log @id  unless @id is ""
    return



  $.fn.logAttr = (attr) ->
    @each ->
      console.log $(this).attr(attr)  unless  $(this).attr(attr) is undefined
      return
  return



#activate basic plug
$ ->
  $("div").logId()
  return


#activate basic plug
$ ->
  $("div").logAttr("class")
  return









#-implement a javascript call-
#1.opts is the arrgument who get from the mehod call
#2.defaults represent the opt by defaults if its not defined in the function call
#3.options its take the defaults and opt and use extends to put it on the function
#4.running a loop for each element who got this call
#5.val attribute get the definition of attribue value or the backup.(use option.prop to call the propery)
#6.condition check if useAlert is true or not to activate the alert box or else put the consone.log

(($) ->
  $.fn.logAttrBook = (opts) ->
    defaults =
      attr: "id"
      backup: "N/A"
      useAlert: true

    options = $.extend({}, defaults, opts)
    @each ->
      val = $(this).attr(options.attr) or options.backup
      (if options.useAlert then alert(val) else console.log(val))
      return


  return
) jQuery




$ ->
$("div").logAttrBook
  attr: "id"
  useAlert:false
  backup: "Not Aviliable"







(($) ->
  $.fn.accordion = (opts) ->
    defaults =
      headings: "h2"
      content: "p"
      callback: ->
        console.log "end of animate"
      duration: 600

    options = $.extend({}, defaults, opts)
    @each ->
      $this = $(this)
      headings = $this.children(options.headings)
      paragraphs = $this.children(options.content)

      animateAccordion = (elem, duration, callback) ->
        paragraphs.stop(true, true).slideUp duration
        $(elem).stop(true, true).slideDown duration, callback
        return

      paragraphs.not(":first").hide()
      $this.on "click", options.headings, ->
        t = $(this)
        tPara = t.next()
        tPara.trigger "showParagraph"  unless tPara.is(":visible")
        return

      $this.on "showParagraph", options.content, ->
        animateAccordion this, options.duration, options.callback
        return

      return


  return
) jQuery



$ ->
  $("#accordion").accordion
    duration: 1000
    callback:console.log "override"
    headings: "h2"
    content: "p"




