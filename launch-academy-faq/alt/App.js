/* jshint esversion: 6 */
import React, { Component } from 'react';
import QuestionList from './QuestionList';



class App extends Component {
  constructor(props){
    super(props);
    this.state = {

    }
  }

  render(){
    return(
      <div>
        <h1> Were here to help </h1>
        <QuestionList data={this.props.data}/>
      </div>
    )
  }
}







export default App;
