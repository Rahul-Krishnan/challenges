/* jshint esversion: 6 */
import React from 'react';
import Answer from './Answer';

const AnswerSection = props => {
  return (
    <ul onClick={props.handleClick} className={props.className}>
        <Answer
          question={props.question}
          answer={props.answer}
          correct={props.correct}
          handleClick={props.handleClick}
          className={props.className}/>
    </ul>
  )
}

export default AnswerSection;
