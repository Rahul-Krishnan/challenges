/* jshint esversion: 6 */
import React from 'react';
import ReactDOM from 'react-dom';

const Question = props => {
  return (
    <p>
    <button type="button"
    onClick={props.handleButtonClick}><i className="fa fa-plus-square fa-lg" aria-hidden="true"></i></button>
    {props.question}
    {props.answer}
    </p>
  );
};

export default Question;
