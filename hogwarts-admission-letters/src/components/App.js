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
    event.preventDefault();
    let newName = event.target.value;
    this.setState({addressee: newName});
  }

  render(){
    return(
      <div id="main-container">
        <div>
          <form className = "columns small-12 center">
            <h5 className = "center">
              Addressee
            </h5>
            <label className="inline">
            <input type="text" id="input" placeholder="Harry Potter" className="columns small-4" onChange={this.handleNameChange}></input>
            <div onClick={this.handleFlipSwitch}>Accepted | Rejected</div>
            </label>
          </form>
        </div>
        <div className="center">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Hogwarts_coat_of_arms_colored_with_shading.svg/2000px-Hogwarts_coat_of_arms_colored_with_shading.svg.png" height="150" width="150" ></img>
          <h1>{"HOGWARTS SCHOOL OF WITCHCRAFT AND WIZARDRY"}</h1>
          <div className="left">
            <p>{"Headmaster: Albus Dumbledore"}<br/>
            {"(Order of Merlin, First Class, Grand"}<br/>
            {"Sorc., Chf. Warlock, Supreme Mugwump,"}<br/>
            {"International Confed. of Wizards)"}</p>

            <p>Dear {this.addressee}</p>

            <Letter
              acceptance = {this.state.accepted}
            />
          </div>
        </div>
      </div>
    )
  }
};


export default App;
