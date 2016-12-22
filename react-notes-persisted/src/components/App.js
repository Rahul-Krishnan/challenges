/* jshint esversion: 6*/
import React, { Component } from 'react';
import 'whatwg-fetch';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }
  componentDidMount() {
    let location = 'http://www.google.com/#q=hello';
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
    })
    .catch(error => console.error("Error in fetch, you dummy!"));
  }

  render() {
    console.log("rendering");
    return (
      <div>
        <h1>Testing, one two three</h1>
      </div>
    )
  }
};

export default App;
