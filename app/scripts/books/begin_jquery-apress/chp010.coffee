#chp010
#1.first we define the method calls with no agruments
#2.we write one function who works like get shot and give the argument she need
#3.put the option with extends
#4.we write ajaxCallDribble who get the url options and if there is any page
#  -get the url id and the rest will be on the ajax call imself
#  -we got the option who it pages and per page or whatever the api ask from us
#  -we get the param who responsibility is to check if we get page and pages(like shots)
#5.the ajax call will give us jsonp object  and we need to give the data as is
#6.the id per_page and page are defult param we can override if we want in the call imself.
#7.the method give the argument for the ajax call like the api said to us.
(($) ->
  ajaxCallDribble = (url, options, pagination) ->
    data = {}
    if pagination
      data.page = options.page
      data.per_page = options.per_page
    $.ajax(
      url: "http://api.dribbble.com" + url
      dataType: "jsonp"
      data: data
    ).done options.callback


  baseSettings =
    callback: ->
    per_page: 15
    page: 1
    id: ""



  $.dribbble =
    getShot: (opts) ->
      options = $.extend({}, baseSettings, opts)
      ajaxCallDribble "/shots/" + options.id, options, false
      return

    getShots: (opts) ->
      options = $.extend({}, baseSettings, opts)
      ajaxCallDribble "/shots/everyone/", options, true
      return

    getPlayerShots: (opts) ->
      options = $.extend({}, baseSettings, opts)
      ajaxCallDribble "/players/" + options.id + "/shots", options, true
      return

    getPlayerShotsFollowing: (opts) ->
      options = $.extend({}, baseSettings, opts)
      ajaxCallDribble "/players/" + options.id + "/shots/following", options, true
      return

  return
) jQuery






#youtube API plug-in
(($) ->
  ajaxCallYouTube = (url, options) ->
    data = {}
    $.ajax(
      url: "http://gdata.youtube.com" + url
      dataType: "jsonp"
      data: data
    ).done options.callback


  baseSettings =
    callback: ->
    q: ""
    maxResults: 1
    alt: "jsonc"

  $.youtube =
    getVideoPlaylist: (opts) ->
      options = $.extend({}, baseSettings, opts)
      ajaxCallYouTube "/feeds/api/videos?q=" + options.q+"&max_result="+options.maxResults+"&v=2&alt="+options.alt, options, false
      return

    getUserDetails: (opts) ->
      options = $.extend({}, baseSettings, opts)
      ajaxCallYouTube "/feeds/api/users/" + options.q+"/playlists?v=2&alt="+options.alt, options, false
      return

  return
) jQuery




#dribble calls
$.dribbble.getShot
  id: "0001"
  callback: (data) ->
    console.log "get the specific data"
    console.log data
    return


$.dribbble.getShots
  callback: (data) ->
    console.log "get all  data"
    console.log data
    return


$.youtube.getVideoPlaylist
  q: "aNdMiIAlK0g"
  callback: (data) ->
    console.log "get the youtube playlist data"
    console.log data
    return


#this method fet all teh user details
$.youtube.getUserDetails
  q: "GY27OwqTX-J9VZDVNS_I2g"
  callback: (data) ->
    console.log "get the youtube USER DETAILS"
    console.log data
    return



