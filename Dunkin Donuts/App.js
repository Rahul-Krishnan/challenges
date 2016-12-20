/* jshint esversion: 6 */
import React, { Component } from 'react';
import Customer from './Customer.js';

render(){
  let id = 1;

  let customers = this.state.customers.map( customer => {
    id++;
    return(
      <Customer
      key={id}
      name={customer.name}
      gif={customer.gif}
      quote={customer.quote}
      />
    )
  })

  return(
    <div>
      <h1>Actual Customers of Dunkin</h1>
      {customers}
    </div>
  )
}
