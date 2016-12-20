/* jshint esversion: 6 */
import React, { Component } from 'react';
import Profile from './Profile'

class Customer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showProfile: false
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    event.preventDefault();
    let toggleProfile = !this.state.showProfile;
    this.setState({ showProfile: toggleProfile });
    console.log("Dunkin Power");
  }

  render(){
    debugger;
    return(
      <Profile
        name={this.props.name}
        gif={this.props.gif}
        quote={this.props.quote}
        handleClick = {this.handleClick}
        showProfile = {this.state.showProfile}
      />
    )
  }
}

export default Customer;
