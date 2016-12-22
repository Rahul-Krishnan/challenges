/* jshint esversion: 6 */
import Tweets from './constants/data';
import TwitterFeed from './src/components/TwitterFeed';
import React from 'react';
import ReactDOM from 'react-dom';


ReactDOM.render(
  <TwitterFeed data={data} />,
  document.getElementById('app')
);
