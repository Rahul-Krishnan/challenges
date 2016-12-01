// YOUR CODE GOES HERE
var next_page = 2;
$(window).scroll(function(event) {
  if ($(window).scrollTop() == $(document).height - $(window).height())
  event.preventDefault();
  var request = $.ajax({
    method: "GET",
    url: "/tweets.json?page=" + next_page.toString()
  });
  request.done(function(more_tweets) {
    more_tweets.forEach(function(tweet_object) {
      $(".tweets").append(
        '<li class="tweet">' + '<div class = "body">' +
        tweet_object.text + '</div>' + '<div class = "user">' +
        tweet_object.username + '</li>');
      });
    });
  next_page ++;
});
