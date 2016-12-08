/* jshint esversion: 6 */
ready().then(() => {
  // your code, here
  let links = document.getElementsbyClassName('page');
  for(let link of links) {
    console.log(link);
    link.onclick.preventDefault();
  }
});
