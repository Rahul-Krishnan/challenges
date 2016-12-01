$('#get-dish').on('click', function(event) {
  event.preventDefault();
  $.get("/dishes/random.json", function(response) {
    alert(response.content);
  });
  debugger;
  // request a new dish and alert the user
});
