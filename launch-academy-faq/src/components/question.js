/* jshint esversion: 6 */
import React from 'react';
//
const Question = props => {
  return (
    <div>
    <button onClick={props.handleClick}><i className="fa fa-plus-square fa-lg" aria-hidden="true"></i>&emsp;</button>
      <h4 className="eachQuestion">{props.question}</h4>
      <p className={`eachAnswer ${props.className}`}>{props.answer}</p>
    </div>
  )
}


export default Question;
