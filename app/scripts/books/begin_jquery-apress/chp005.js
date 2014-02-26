// Generated by CoffeeScript 1.6.3
(function() {
  var accordion, accordionHeading, accordionPragraph, basicForm, clickButton, inputTextFields, mainTitleOnPage;

  clickButton = $(".clickMe");

  clickButton.on('click', function(e) {
    console.log(e);
    console.log("the x of the button is:" + e.pageX);
    return console.log("the y of the button is:" + e.pageY);
  });

  basicForm = $("#formBasicEvents");

  inputTextFields = $("input:text");

  basicForm.on('submit', function() {
    console.log("the form as been submitted");
    return basicForm.off("submit");
  });

  inputTextFields.on('focus', function() {
    $(this).addClass("redBorder");
    return console.log("i am on focus-you can write up whatever you want!");
  }).on('blur', function() {
    $(this).removeClass("redBoder");
    return console.log("i'm out! stop writing!!");
  });

  mainTitleOnPage = $("#mainContainer h1");

  mainTitleOnPage.on('mouseenter', function() {
    console.log("hover!!");
  }).on('mouseleave', function() {
    return console.log("unhover!!");
  });

  accordion = $("#accordion");

  accordionHeading = $("#accordion h2");

  accordionPragraph = $("#accordion p");

  accordionPragraph.not(":first").hide();

  accordionHeading.on("click", function() {
    var t, tPara;
    t = $(this);
    tPara = t.next();
    if (tPara.is(":visible")) {
      return;
    }
    accordionPragraph.slideUp("normal");
    return tPara.slideDown("normal");
  });

}).call(this);

/*
//@ sourceMappingURL=chp005.map
*/
