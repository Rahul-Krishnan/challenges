/* jshint esversion: 6 */
import React, {Component} from 'react';
import QuestionSection from './QuestionSection';
import AnswerSection from './AnswerSection';
import ResponseSection from './ResponseSection';

class App extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      selectedAnswerId: null,
      correctSelection: "none"
    };
  }

  handleAnswerClick(id, correct) {
    if (this.state.selectedAnswerId===id) {
      let newId = null;
      let newCorrectSelection = "none";
    }
    else {
      let newId = id;
      let newCorrectSelection = correct;
      this.setState({ selectedAnswerId: newId});
      this.setState({ correctSelection: newCorrectSelection});

    }
  }

  render(){
    let answerList = this.props.data.answers.map(answerDetails => {

      let handleClick = () => {
        this.handleAnswerClick(answerDetails.id, answerDetails.correct);
      };

      let className;

      if(answerDetails.correct === true) {
        className="Correct";
      }
      else if (answerDetails.correct === false){
        className="Incorrect";
      }
      else {
        className="";
      }

      return (
        <AnswerSection
          key={answerDetails.id}
          question={answerDetails.question_id}
          answer={answerDetails.body}
          correct={answerDetails.correct}
          handleClick={handleClick}
          className={className}
        />
      )
    })

    return(
      <div id="main-container" className="jumbotron">
        <h1 id="title">React Quiz!</h1>
        <QuestionSection data={this.props.data}/>
        {answerList}
        <ResponseSection
          correct={this.state.correctSelection}
          className={this.className}/>
      </div>
    )
  }
}

export default App
