/* jshint esversion: 6 */
import './app.scss';
import React from 'react';
import ReactDOM from 'react-dom';

let headerElement = React.createElement(
  'h1'
);

ReactDOM.render(
  headerElement,
  document.getElementById('app')
);
