$('#get-dish').on('click', function(event) {
  event.preventDefault();
  $.get("/dishes/random.json", function(sample_dish) {
    alert("Your dish is " + sample_dish["dish"]);
  });
  // request a new dish and alert the user
});
