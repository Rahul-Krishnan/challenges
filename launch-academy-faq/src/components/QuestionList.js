/* jshint esversion: 6 */
import React, { Component } from 'react';
import Question from './question';

class QuestionList extends Component{
  constructor(props){
    super(props);
    this.state = {
    };
  }

  render(){
    let questionList = this.props.data.map((box)=>{
      return (
        <Question
          key={box.id}
          question={box.question}
          answer={box.answer}
        />
      )
    })

    return (
      <div>
        {questionList}
      </div>
    )
  }
}

export default QuestionList
