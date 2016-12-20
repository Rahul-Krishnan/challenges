/* jshint esversion: 6 */
import React, {Component} from 'react';
import ReactDOM from 'react-dom';
import QuestionList from './questions';
import data from '../constants/data';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      questions: {data},
      answers: {data}
    };
  }

  render() {
    let data = this.props.data;
    return (
      <div>
        <h1>{"We're here to help"}</h1>
        <QuestionList
          questions={this.state.questions}
        />
      </div>
    );
  }
}


export default App;
