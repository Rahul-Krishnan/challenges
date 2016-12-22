/* jshint esversion: 6 */
import React, { Component } from 'react';
import QuestionList from './QuestionList';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
    };
  }

  render(){
    return(
      <div id="main-container">
        <h1> {"We're here to help"} </h1>
        <QuestionList data={this.props.data}/>
      </div>
    )
  }
}

export default App;
