/* jshint esversion: 6 */
import React from 'react';
import Question from './question';

const QuestionList = props => {
  let questions = props.questions.props.data.map(questionData => {
    const { id, question, answer } = questionData;
    return (
      <Question
        key={id}
        question={question}
        answer={answer}
      />
    );
  });
  return (
    <ul>
      {questions}
    </ul>
  );
};

export default QuestionList;
