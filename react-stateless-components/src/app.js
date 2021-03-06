/* jshint esversion: 6 */
// app.js
import React from 'react';
import ReactDOM from 'react-dom';
import GroceryList from './grocerylist';
import GroceryForm from './GroceryForm';

let groceries = [
  { id: 1, name: "Oranges" },
  { id: 2, name: "Bananas" },
  { id: 3, name: "Bread" },
];

const App = props => {
  let handleFormSubmit = event => {
    event.preventDefault();
    alert("Form was submitted, brother");
  };
  let handleButtonClick = event => alert("Button was clicked, son");

  return (
    <div>
      <h1>Grocery List React</h1>
      <GroceryForm handleFormSubmit={handleFormSubmit} />
      <GroceryList groceries={groceries} handleButtonClick={handleButtonClick} />
    </div>
  );
};

export default App;
