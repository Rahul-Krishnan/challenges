/* jshint esversion: 6*/
// YOUR CODE GOES HERE
let Spaceship = require('./Spaceship');
let CrewMember = require('./CrewMember');
let rocket = require('./rocket');

let crewNames = [
  'Rahul',
  'Scott',
  'Riki',
  'Amrisha',
  'Jackie',
  'Lisa',
  'Mike',
  'Josh',
  'Sean',
  'Scooby',
  'Scrappy'
];

let crewObjectsArray = [];

ourShip = new Spaceship('USS Enterprise');

trainCrew = (namesArray) => {
  for(let name of namesArray) {
    newMember = new CrewMember(name);
    newMember.trained = true;
    crewObjectsArray.push(newMember);
  }
};

trainCrew(crewNames);
// console.log(crewObjectsArray);

launchpad = (ship, objectsArray, propulsionObject) => {
  console.log(`Please prepare for launch. All unauthorized personnel must leave the launch area immediately!\n`);
  console.log(`All crew, please report to ${ship.name} for imminent takeoff.\n`);
  ship.loadCrew(objectsArray);
  console.log(`\nLooks like ${ship.captain().name} is our Captain for the day...\n`);
  ship.mountPropulsion(propulsionObject);
  rocket.addFuel(10);
  ship.takeoff();
};

launchpad(ourShip, crewObjectsArray, rocket);
