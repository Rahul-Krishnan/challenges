/* jshint esversion: 6 */
import React from 'react';
import data from '../constants/data';

const Questions = props => {
  return (
     <li>
       {props.question}
       <button type="button" className="close-button" onClick={props.handlePlusClick}>
       <i className="fa fa-plus-square fa-lg" aria-hidden="true"></i>
       </button>
     </li>
  )
}

export default Questions;
