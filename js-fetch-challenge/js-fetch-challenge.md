### Introduction

In this challenge, you will use the JavaScript Fetch API to complete a series
of features within a Web Application.

### Getting Started

```no-highlight
$ cd ~/challenges
$ et get js-fetch-challenge
$ cd js-fetch-challenge
$ npm install -g http-server
$ http-server
```

### Instructions

Open your browser and visit <http://localhost:8080/index.html>. There, you will
find instructions on how to proceed.

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

ready().then(() => {
  return fetch('/images/logo.png');
})
  .then(response => {
    console.log(response);
    return response.blob();
  })
  .then(body => {
    console.log(body);
    let objectURL = URL.createObjectURL(body);
    // console.log(objectURL);
    let image = document.createElement('img');
    image.src = objectURL;
    // console.log(image);
    document.getElementById('main').append(image);
  });
