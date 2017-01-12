import React, { Component } from 'react';

class Fortune extends Component {
  constructor(props) {
    super(props);
    this.state = { fortune: '' };
  }

  componentDidMount() {
    $.ajax({
      url: '/api/fortune',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ fortune: data.fortune });
    });
  }

  render() {
    return (
      <h1>Your Fortune: {this.state.fortune}</h1>
    );
  }
}

export default Fortune;
