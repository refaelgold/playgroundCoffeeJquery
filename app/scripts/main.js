// Generated by CoffeeScript 1.7.1
(function() {
  var json, parsed, playListURL, videoURL;

  json = "{ \"person\" : { \"age\" : 20, \"name\" : \"Jack\" } }";

  parsed = JSON.parse(json);

  console.log(parsed);

  console.log(parsed.person);

  console.log(parsed.person["age"]);

  json = {
    person: {
      age: 20,
      name: "Jack"
    }
  };

  console.log("string:" + JSON.stringify(json));

  $(function() {
    $.ajax({
      url: "/scripts/sample.json",
      type: "get",
      dataType: "json",
      success: function(data) {
        console.log("the ajax call info" + data);
      }
    });
  });

  $(function() {
    $.ajax({
      url: "http://api.dribbble.com/shots/21603-Moon",
      dataType: "jsonp",
      success: function(data) {
        var img, title, user, wrapperDiv;
        wrapperDiv = $("<div />", {
          "class": "wrapper"
        });
        title = $("<h2 />", {
          text: data.title
        });
        img = $("<img />", {
          alt: data.title,
          src: data.image_url
        });
        user = $("<a />", {
          text: data.player.name,
          href: data.player.url
        });
        wrapperDiv.append(title).append(img).append(user);
        $(".container").append(wrapperDiv);
      }
    });
  });

  playListURL = "http://gdata.youtube.com/feeds/api/playlists/B2A4E1367126848D?v=2&alt=json&callback=?";

  videoURL = "http://www.youtube.com/watch?v=";

  $.getJSON(playListURL, function(data) {
    var list_data;
    list_data = "";
    $.each(data.feed.entry, function(i, item) {
      var feedTitle, feedURL, fragments, thumb, url, videoID;
      feedTitle = item.title.$t;
      feedURL = item.link[1].href;
      fragments = feedURL.split("/");
      videoID = fragments[fragments.length - 2];
      url = videoURL + videoID;
      thumb = "http://img.youtube.com/vi/" + videoID + "/default.jpg";
      list_data += "<li><a href=\"" + url + "\" title=\"" + feedTitle + "\"><img alt=\"" + feedTitle + "\" src=\"" + thumb + "\"</a></li>";
    });
    $(list_data).appendTo(".cont");
  });

  playListURL = "http://gdata.youtube.com/feeds/api/playlists/B2A4E1367126848D?v=2&alt=json&callback=?";

  videoURL = "http://www.youtube.com/watch?v=";

  $(function() {
    $.ajax({
      url: playListURL,
      dataType: "jsonp",
      success: function(data) {
        var list_data;
        list_data = "";
        $.each(data.feed.entry, function(i, item) {
          var feedTitle, feedURL, fragments, thumb, url, videoID;
          feedTitle = item.title.$t;
          feedURL = item.link[1].href;
          fragments = feedURL.split("/");
          videoID = fragments[fragments.length - 2];
          url = videoURL + videoID;
          thumb = "http://img.youtube.com/vi/" + videoID + "/default.jpg";
          list_data += "<li><a href=\"" + url + "\" title=\"" + feedTitle + "\"><img alt=\"" + feedTitle + "\" src=\"" + thumb + "\"</a></li>";
        });
      }
    }, $(list_data).appendTo(".cont"));
  });

}).call(this);

//# sourceMappingURL=main.map
