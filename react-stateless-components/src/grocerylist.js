/* jshint esversion: 6 */

import React from 'react';
import Grocery from './grocery';

const GroceryList = props => {
  let groceries = props.groceries.map(grocery => {
    return (
      <Grocery
        key={grocery.id}
        name={grocery.name}
        handleButtonClick={props.handleButtonClick}
      />
    );
  });

  return (
    <ul>
      {groceries}
    </ul>
  );
};

export default GroceryList;
