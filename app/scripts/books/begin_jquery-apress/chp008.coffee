#chp008
json = "{ \"person\" : { \"age\" : 20, \"name\" : \"Jack\" } }"
parsed = JSON.parse(json)
console.log parsed
console.log parsed.person
console.log parsed.person["age"]




#get the json by script
json = person:
  age: 20
  name: "Jack"

console.log "string:"+JSON.stringify(json)


#get it by ajax
$ ->
  $.ajax
    url: "/scripts/books/begin_jquery-apress/sample007.json"
    type: "get"
    dataType: "json"
    success: (data) ->
      console.log "the ajax call info"+data
      return

  return





#  create a jsonp with some tags
$ ->
  $.ajax
    url: "http://api.dribbble.com/shots/21603-Moon"
    dataType: "jsonp"
    success:(data) ->
      wrapperDiv = $("<div />",
        class: "wrapper"
      )
      title = $("<h2 />",
        text: data.title
      )
      img = $("<img />",
        alt: data.title
        src: data.image_url
      )
      user = $("<a />",
        text: data.player.name
        href: data.player.url
      )
      wrapperDiv.append(title).append(img).append user
      $(".container").append wrapperDiv
      return
  return



#  create a jsonp with loop
#1.put the url for get the platlist
#2.dont forget to put the callback
#3.use the videoUrl For echo the youtube video url
#4.activate getJson for get the data to the pase
#  param playListUrl is the url we define in 1
#  param data is the data who come from youtube
#5.list_data is a val who will have all the html of the list
#6.running a loop of data.feed.entry
#  param i is the key value
#  param item is the data per 1 video
#7.feedTitle will have the title of the video
#8.feedurl will have the ID of the video
#9.fradgment will get split the url to the the id
#10.video id is the first so we do some math to get it (split number 1 )
#11.url is the full url of the video
#12.thumb is the defulat image of the video
#13.list_data is the html of all the arrbuments
#14.at the end of getJson we appendTo some element in the page.


playListURL = "http://gdata.youtube.com/feeds/api/playlists/B2A4E1367126848D?v=2&alt=json&callback=?"
videoURL = "http://www.youtube.com/watch?v="
$.getJSON playListURL, (data) ->
  list_data = ""
  $.each data.feed.entry, (i, item) ->
    feedTitle = item.title.$t
    feedURL = item.link[1].href
    fragments = feedURL.split("/")
    videoID = fragments[fragments.length - 2]
    url = videoURL + videoID
    thumb = "http://img.youtube.com/vi/" + videoID + "/default.jpg"
    list_data += "<li><a href=\"" + url + "\" title=\"" + feedTitle + "\"><img alt=\"" + feedTitle + "\" src=\"" + thumb + "\"</a></li>"
    return

  $(list_data).appendTo ".cont"
  return
