/* jshint esversion: 6 */
import React, { Component } from 'react';
//
class Question extends Component{
  constructor(props){
    super(props);
    this.state = {
      selected: true
    }
    this.handleClick = this.handleClick.bind(this)
  }

  handleClick(event) {
    event.preventDefault()
    let opposite = !this.state.selected
    this.setState({selected: opposite})
  }

  render(){
    let answer = ''
    if (this.state.selected == true) {
      answer = (
        <p>{this.props.answer}</p>
      )
    }

    return (
      <div>
      <button onClick={this.handleClick}>+</button>
        <h3>{this.props.question}</h3>
        {answer}
      </div>
    )
  }
}

export default Question;
