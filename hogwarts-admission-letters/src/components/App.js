/* jshint esversion: 6 */
import React, { Component } from 'react';
import Letter from './letter';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      accepted: false,
      addressee: null
    };
    this.handleFlipSwitch = this.handleFlipSwitch.bind(this);
    this.handleNameChange = this.handleNameChange.bind(this);
  }

  handleFlipSwitch() {
    let newState = !this.state.accepted;
    this.setState({accepted: newState});
  }

  handleNameChange(event) {
    let newName = event.target.value;
    this.setState({addressee: newName})
  }

  render(){
    return(
      <div>
        <form>
          <h5>
            Addressee
          </h5>
          <input type="text" id="input" placeholder="Harry Potter" className="columns small-6" onChange={this.handleNameChange}></input>
        <div onClick={this.handleFlipSwitch}>Accepted | Rejected</div>
        </form>

        <h1>{"HOGWARTS SCHOOL OF WITCHCRAFT AND WIZARDRY"}</h1>

        <p>{"Headmaster: Albus Dumbledore"}<br/>
        {"(Order of Merlin, First Class, Grand"}<br/>
        {"Sorc., Chf. Warlock, Supreme Mugwump,"}<br/>
        {"International Confed. of Wizards)"}</p>

        <p>Dear {this.addressee}</p>

        <Letter
          acceptance = {this.state.accepted}
        />
      </div>
    )
  }
};


export default App;
