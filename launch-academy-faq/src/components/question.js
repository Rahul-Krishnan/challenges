/* jshint esversion: 6 */
import React, { Component } from 'react';
//
class Question extends Component{
  constructor(props){
    super(props);
    this.state = {
      selected: false
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    event.preventDefault();
    let opposite = !this.state.selected;
    this.setState({selected: opposite});
  }

  render(){
    let answer = '';
    if (this.state.selected === true) {
      answer = (
        <p>{this.props.answer}</p>
      )
    }
    return (
      <div>
      <button onClick={this.handleClick}><i className="fa fa-plus-square fa-lg" aria-hidden="true"></i>::::</button>
        <h3 id="eachQuestion">{this.props.question}</h3>
        {answer}
      </div>
    )
  }
}

export default Question;
