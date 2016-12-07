/* jshint esversion: 6 */
// Exercise: Find the top navbar by query for the element type, which is <nav>.
let navbar = $('nav');
// Exercise: Find the sidebar on the right by using it's id.
let sidebar = $('#sidebar-right');
// Exercise: Find the "Pages" and "Groups" sections of the sidebar by using their class.
let pagesGroups = $('.pages','.groups');
// Exercise: Find all of the comments on the page.
let comments = $('.comments');
// Exercise: Find the first comment on the page.
let firstCommentBox = comments[0];
let firstComment = $(firstCommentBox).find('p')[0].innerHTML;
// Exercise: Find the last comment on the page.
let lastCommentBox = comments[comments.length - 1];
let lastComment = $(lastCommentBox).find('p')[0].innerHTML;
// Exercise: Find the fourth comment on the page.
let fourthCommentBox = comments[3];
let fourthComment = $(fourthCommentBox).find('p')[0].innerHTML;
// Exercise: Find one of the ads in the sidebar and hide them.
let ads = $('.ad-slot');
ads[0].style.visibility = 'hidden';
// Exercise: Set the visibility to the form that you hid in the previous step to make it visible again.
ads[0].style.visibility = 'visible';
// Exercise: Use setAttribute to change src attribute of one of the ads in the sidebar.
$(ads[2].lastElementChild).attr('src', 'http://placegoat.com/200/200');
// Exercise: Find Sam's post and change it's text to something incredible.
let sam = $('.media-body')[8];
$(sam).find('p')[0].innerHTML = "Something INCREDIBLE!!!";
// Exercise: Find the first post and add the .post-liked class to it.
let posts = $('.posts');
let first = posts[0];
$(first).attr('class','post media post-liked');
// Exercise: Find the second post and remove the .post-liked class.
let second = posts[1];
$(second).attr('class','post media');
