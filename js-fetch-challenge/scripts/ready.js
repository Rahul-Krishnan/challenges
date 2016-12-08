/* jshint esversion: 6 */
let ready = () => {
  // your code, here
//     return fetch('/document-ready');
// };
  return new Promise((resolve, reject) => {
    // // do something asynchronously
    if (document.readyState==='complete') {
      resolve("Document Ready!");  // execute .then()
    } else {
      reject(Error("Document still loading..."));  // execute .catch()
    }

  })
    .then((result) => {
    // process data, add elements to the DOM, etc...
    console.log(result);

  })
    .catch((err) => {
    // show user an error message, retry network request, etc...
    console.log(err);
    console.log(document.readyState);
  });
};

// var bootstrap = function(evt){
//   if (evt.target.readyState === "interactive") { initLoader(); }
//   else if (evt.target.readyState === "complete") { initApp(); }
// };
// document.addEventListener('readystatechange', bootstrap, false);
