// update the random fortune page using AJAX
//
$("#random-fortune").on("click", function(event) {
  event.preventDefault();
  $.get("/api/v1/fortunes/random.json", function(newFortune) {
    $("#fortune").text(newFortune.content);
  });
});

// create a new fortune and update the page
//
$("form").on("submit", function(event) {
  event.preventDefault();
  var newFortuneContent = $('#fortune-content').val();

  var request = $.ajax({
    method: "POST",
    data: { content: newFortuneContent },
    url: "/api/v1/fortunes.json"
  });

  request.done(function() {
    $("ul.fortunes").append("<li>" + newFortuneContent + "</li>");
    $('#fortune-content').val("");
  });
});
