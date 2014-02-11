// Generated by CoffeeScript 1.6.3
(function() {
  var accordion, boxRed, first_line, headerNavSelector, headings, i, innerBoxElement, linkHolder, pContainer, paragraphs, second_line;

  headerNavSelector = $('.nav');

  i = 1;

  headerNavSelector.on('click', 'li', function() {
    console.log('header element is clicked for the ' + i + ' time');
    return i++;
  });

  headerNavSelector.append('<li><a>portfilo</a></li>');

  pContainer = $('.p_holder');

  pContainer.on("click", "p", function() {
    return alert("Hello World");
  });

  $("<p />", {
    text: "Paragraph006"
  }).appendTo(pContainer);

  boxRed = $('.mainBox');

  innerBoxElement = $('.innerElement');

  boxRed.on("click", function() {
    alert("BOX");
  });

  innerBoxElement.on("click", function(e) {
    alert("Inner Box Element");
    e.stopPropagation();
  });

  linkHolder = $(".linkHolder");

  linkHolder.on("click", "a", function(e) {
    e.preventDefault();
    return linkHolder.children('a').css("color", "green");
  });

  first_line = $('.button001');

  second_line = $('.button002');

  first_line.on("click", function() {
    second_line.trigger("colorChangeToBlue");
  });

  second_line.on("colorChangeToBlue", function() {
    second_line.css("color", "blue");
  });

  accordion = $("#accordion");

  headings = $("h2");

  paragraphs = $("p");

  accordion.children("p").not(":first").hide();

  accordion.on("click", "h2", function() {
    var t, tPara;
    t = $(this);
    tPara = t.next();
    if (tPara.is(":visible")) {
      return;
    }
    paragraphs.slideUp("normal");
    tPara.slideDown("normal");
  });

}).call(this);

/*
//@ sourceMappingURL=chp006.map
*/
