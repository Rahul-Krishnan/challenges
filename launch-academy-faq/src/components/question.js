/* jshint esversion: 6 */
import React, { Component } from 'react';
//
class Question extends Component{
  constructor(props){
    super(props);
    this.state = {
      selected: false
    };
  }

  render(){
    return (
      <div>
      <button onClick={this.props.handleClick}><i className="fa fa-plus-square fa-lg" aria-hidden="true"></i>&emsp;</button>
        <h4 className="eachQuestion">{this.props.question}</h4>
        <p className={`eachAnswer ${this.props.className}`}>{this.props.answer}</p>
      </div>
    )
  }
}

export default Question;
