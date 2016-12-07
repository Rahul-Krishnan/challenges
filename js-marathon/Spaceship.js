/* jshint esversion: 6*/
let rocket = require('./rocket');

class Spaceship {
  constructor(name) {
    this.name = name;
    this.crew = [];
    this.propulsion = null;
  }

  loadCrew(crewMemberObjects) {
    for(let member of crewMemberObjects) {
      this.crew.push(member);
      console.log(`${member.name} is on board, ready for launch.`);
    }
  }

  captain() {
    let number = this.crew.length;
    let random_number = Math.floor(Math.random() * number);
    return this.crew[random_number];
  }

  mountPropulsion(someObject) {
    this.propulsion = someObject;
    console.log(`Propulsion mounted!\n`);
  }

  takeoff() {
    if (rocket.fire()) {
      console.log('\nBRROOOOOOOOMSSSSSHHHHROOOAAOOAARRRGH! WE HAVE LIFTOFF!');
    }
    else {
      console.log('\nROCKET FIRING UNSUCCESSUL. PLEASE REFUEL OR FIND NEW THRUSTERS.');
    }
  }
}

module.exports = Spaceship;
