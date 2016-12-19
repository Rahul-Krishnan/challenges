/* jshint esversion: 6 */
// main.js
import './app.scss';
import React from 'react';
import ReactDOM from 'react-dom';
import Grocery from './grocery';
import GroceryList from './GroceryList';
import GroceryForm from './GroceryForm';
import App from './App';

ReactDOM.render(
  <App />,
  document.getElementById('app')
);
