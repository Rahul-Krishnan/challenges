/* jshint esversion: 6 */
// fetch('http://localhost:4567/test')
//   .then(respponse => {
//     console.log('response', response);
//     console.log('response.status:', response.status);
//     console.log('response.statusText:', response.statusText);
//     console.log('response.ok:', response.ok);
//     return response.text();
//   })
//   .then(responseBody => {
//     console.log('responseBody:', responseBody);
//   });

  fetch('http://localhost:4567/books.json')
  .then(response => {
    if (response.ok) {
      return response;
    } else {
      let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
      throw(error);
    }
  })
  .then(response => response.json())
  .then(body => {
    console.log(body);
    // let bodyParsed = JSON.parse(body);
    // console.log(bodyParsed);
    // bodyParsed.books.forEach(book) => {
    //   $('#books').append(`<li>${book.name}</li>`);
    // });
  })
  .catch(error => console.error(`Error in fetch`));
// let currentSummary = '';
//
// fetch('http://localhost:4567/books.json')
//   .then(response => {
//     if (response.ok) {
//       return response;
//     } else {
//       let errorMessage = `${response.status} (${response.statusText})`,
//           error = new Error(errorMessage);
//       throw(error);
//     }
//   })
//   .then(response => response.text())
//   .then(body => {
//     console.log(body);
//     let bodyParsed = JSON.parse(body);
//     console.log(bodyParsed);
//     currentSummary += bodyParsed.summary;
//     let summaryElement = document.createElement('h2');
//     let summaryText = document.createTextNode(currentSummary);
//     summaryElement.appendChild(summaryText);
//     body.appendChild(summaryElement);
//   })
//   .catch(error => console.error(`Error in fetch: ${error.message}`));
