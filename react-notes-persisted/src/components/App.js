/* jshint esversion: 6*/
import React, { Component } from 'react';
import 'whatwg-fetch';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      answer: ""
    };
  }
  componentDidMount() {
    let location = 'http://localhost:4567/folders/1/notes.json';
    console.log("mounted");
    fetch(location)
    .then(response => {
      if(response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status}`,
          error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      console.log(body);
      let newAnswer = body.notes[0].body;
      console.log(newAnswer);
      this.setState({ answer: newAnswer });
    })
    .catch(error => console.error("Error in fetch, you dummy!"));
  }

  render() {
    console.log("rendering");
    return (
      <div>
        <h1>Testing, one two three:</h1>
        <h3>{this.state.answer}</h3>
      </div>
    )
  }
};

export default App;
