/* jshint esversion: 6 */
// StatefulComponentExample.js
import React, { Component } from 'react';

class StatefulComponentExample extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clickCount: 0,
      chillLevel: 'Penguin with a surfboard'
    };

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    // debugger;
    let newClickCount = this.state.clickCount + 1;
    this.setState({ clickCount: newClickCount });
  }

  render() {
    // debugger;
    return(
      <div onClick={this.handleClick}>
        <h1>Component Message: {this.props.message}</h1>
        <h1>Component Click Count: {this.state.clickCount}</h1>
        <h1>Component Chill Level: {this.state.chillLevel}</h1>
      </div>
    );
  }
};

export default StatefulComponentExample;
