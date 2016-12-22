/* jshint esversion: 6 */
import React, { Component } from 'react';
import Question from './question';

class QuestionList extends Component{
  constructor(props){
    super(props);
    this.state = {
      selectedQuestionId: null
    };
    this.handleQuestionClick = this.handleQuestionClick.bind(this);
  }

  handleQuestionClick(id) {
    if (this.state.selectedQuestionId===id) {
      this.setState({ selectedQuestionId: null });
    }
    else {
      this.setState({ selectedQuestionId: id });
    }
  }

  render() {
    let questionList = this.props.data.map(box => {

      let handleClick = () => {
        this.handleQuestionClick(box.id);
      };

      let className;

      if(box.id === this.state.selectedQuestionId) {
        className="selected";
      }
      else {
        className="hidden";
      }

      return (
        <Question
          key={box.id}
          question={box.question}
          answer={box.answer}
          handleClick={handleClick}
          className={className}
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

export default QuestionList;
