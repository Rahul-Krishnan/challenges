/* jshint esversion: 6 */
import React, { Component } from 'react';
import Letter from './letter';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      accepted: false,
      addressee: "Addressee"
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
    if (newName === "") {
      newName = "Addressee"
    }
    this.setState({addressee: newName});
  }

  render(){
    return(
      <div id="main-container">
        <div>

          <form className = "columns small-12 center">
            <h4 className = "center">
              Addressee
            </h4>
            <label className="inline">

            <input type="text" id="input" placeholder="Harry Potter" className="columns small-4" onChange={this.handleNameChange} onSubmit={this.handleNameChange}></input>

            <div id="flipSwitch" onClick={this.handleFlipSwitch}>Accepted | Rejected</div>
            </label>
          </form>

        </div>
        <div className="center">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Hogwarts_coat_of_arms_colored_with_shading.svg/2000px-Hogwarts_coat_of_arms_colored_with_shading.svg.png" height="150" width="150" ></img>
          <h1>{"HOGWARTS SCHOOL OF WITCHCRAFT AND WIZARDRY"}</h1>
          <p><b>{"Headmaster: Albus Dumbledore"}</b><br/>
          {"(Order of Merlin, First Class, Grand"}<br/>
          {"Sorc., Chf. Warlock, Supreme Mugwump,"}<br/>
          {"International Confed. of Wizards)"}</p>
          <div className="left">
            <p>Dear {this.state.addressee}</p>

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
