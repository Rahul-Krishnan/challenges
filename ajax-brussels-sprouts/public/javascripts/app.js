$('#get-dish').on('click', function(event) {
  event.preventDefault();

  var request = $.ajax({
    method: "GET",
    url: "/dishes/random.json"
  })

  request.done(function(stuff) {
    alert("Your dish is " + stuff.selection);
  // Shorthand JQuery get request:
  // $.get("/dishes/random.json", function(thing) {
  //   alert("Your dish is " + thing.selection);
  //  });
});
//
