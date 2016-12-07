/* jshint esversion: 6 */
// Exercise: Find the top navbar by query for the element type, which is <nav>.
let navbar = $('nav');
// Exercise: Find the sidebar on the right by using it's id.
let sidebar = $('#sidebar-right');
// Exercise: Find the "Pages" and "Groups" sections of the sidebar by using their class.
let pagesGroups = $('.pages','.groups');
// Exercise: Find all of the comments on the page.
let comments = $('.media-body');
// Exercise: Find the first comment on the page.
let firstComment = $(comments[0]).find('p')[0].innerText;
console.log(`First comment: ${firstComment}`);
// Exercise: Find the last comment on the page.
let lastComment = $(comments[comments.length - 1]).find('p')[0].innerHTML;
console.log(`Last comment: ${lastComment}`);
// Exercise: Find the fourth comment on the page.
let fourthComment = $(comments[3]).find('p')[0].innerText;
console.log(`Fourth comment: ${fourthComment}`);
// Exercise: Find one of the ads in the sidebar and use .hide() to hide it.
let ads = $('.ad-slot');
$(ads[0]).hide();
// Exercise: Use .show() to make the ad that you hid in the previous step visible again.
$(ads[0]).show();
// Exercise: Use .toggle() to toggle the display of the nav bar at the top of the page.
$(navbar).toggle();
// Exercise: Use .attr() to change src attribute of one of the ads in the sidebar. Here's an image source if you need one: http://placebear.com/200/300.
$(ads[2].lastElementChild).attr('src', 'http://placegoat.com/200/300');
// Exercise: Find Sam's post and change it's text to something incredible.
let sam = $('.media-body')[8];
$(sam).find('p')[0].innerHTML = "Something INCREDIBLE!!!";
// Exercise: Find the first post and use .addClass() to add the .post-liked class to it.
let posts = $('.posts')[0];
let postEntries = $(posts).find('.post', '.media');
$(postEntries[0]).addClass('post-liked');
// Exercise: Find the second post and use .removeClass() to remove the .post-liked class.
$(postEntries[1]).removeClass('post-liked');
// Exercise: Find any post and use .toggleClass() to toggle the .post-liked class.
$(postEntries[2]).toggleClass('post-liked');
