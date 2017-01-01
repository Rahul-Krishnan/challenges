/* jshint esversion: 6 */
// main.js
import React from 'react';
import ReactDOM from 'react-dom';
import StatefulComponentExample from './components/StatefulComponentExample';

ReactDOM.render(
  <StatefulComponentExample message="hi" />,
  document.getElementById('app')
);
