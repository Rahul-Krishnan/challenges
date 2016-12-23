/* jshint esversion: 6 */
import React from 'react';

const QuestionSection = props => {
  return (
    <div>
      <h3 className="eachQuestion">{props.data.question.body}</h3>
    </div>
  )
}

export default QuestionSection;
