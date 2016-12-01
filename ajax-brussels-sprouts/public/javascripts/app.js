$('#get-dish').on('click', function(event) {
  event.preventDefault();
  $.get("/dishes/random.json", function(thing) {
    alert("Your dish is " + thing.selection);
  });
  // request a new dish and alert the user
});
//
// var request = $.ajax({
//   method: "GET",
//   url: "/dishes/random.json"
// })
//
// request.done(alert("Your dish is " + sample_dish.selection));
