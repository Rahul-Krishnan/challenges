/*jshint esversion: 6*/
//Exceeds Expectation Part 1 Code Here
// let GroceryItem = require('./GroceryItem');
// let GroceryList = require('./GroceryList');

let myList = new GroceryList('Rahul Groceries', '2016/12/09');

fetch('../groceries.json')
.then(response => {
  console.log('response:', response);
  console.log('response.status:', response.status);
  console.log('response.statusText:', response.statusText);
  console.log('response.ok:', response.ok);
  return response.json();
})
.then(responseBody => {
    console.log('responseBody:', responseBody);
    let groceries = (responseBody.groceries);
    for (let entryObject of groceries) {
      let newItem = new GroceryItem(entryObject.name, entryObject.quantity);
      myList.addItem(newItem);
    }
    let main = document.getElementById('main');
    let myHTML = myList.toHTML();
    main.innerHTML += myHTML;
});
let values =[];

$(document).ready(() => {
  document.getElementById('button').addEventListener("click", event.preventDefault());
  let thisName = document.getElementById('grocery_name').value;
  let thisQuantity = document.getElementById('grocery_quantity').value;

  let data = {
    grocery: {
      name: thisName, quantity: thisQuantity
    }
  };
  let jsonStringData = JSON.stringify(data);

  fetch('http://localhost:4567/groceries.json', {
    method: 'post',
    body: jsonStringData
  }).then(response => {
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
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
});
