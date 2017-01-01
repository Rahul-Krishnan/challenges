/* jshint esversion: 6 */
// StatefulListItem.js
import React, { Component } from 'react';

class StatefulListItem extends Component {
  constructor(props) {
    super(props);
    this.state = { clicked: false };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    let nextClicked = !this.state.clicked;
    this.setState({ clicked: nextClicked });
  }

  render() {
    let text = this.props.name;

    if (this.state.clicked) {
      text += ' was clicked';
    }

    return <li onClick={this.handleClick}>{text}</li>;
  }
};

export default StatefulListItem;
