/* jshint esversion: 6 */
let ready = () => {
  return new Promise((resolve, reject) => {
    document.addEventListener('readystatechange', () => {
    if (document.readyState == 'complete') {
      resolve("pass");
    } else if (document.readyState == 'interactive') {
      window.setTimeout(0);
    } else {
      reject("fail");
    }});
  });
};

//
//
// let ready = () => {
//   // your code, here
//   return new Promise((resolve, reject) => {
//     // // do something asynchronously
//     document.addEventListener('readyStateChange', () => {
//       if (document.readyState =='complete') {
//         resolve("Document Ready!");
//       }  // execute .then()
//       // } else {
//       //   reject(Error("Document still loading..."));  // execute .catch()
//       // }
//       }
//     });
//   });
//
//   // .then((result) => {
  // // process data, add elements to the DOM, etc...
  // console.log(result);
  // })
  // .catch((err) => {
  // // show user an error message, retry network request, etc...
  // console.log(err);
  // console.log(document.readyState);
  // });
