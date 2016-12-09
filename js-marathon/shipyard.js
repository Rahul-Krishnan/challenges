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


countdown = (highNumber) => {
  let countdown = highNumber;
  console.log(countdown);
  var id = setInterval(function() {
    if (countdown > 0) {
      countdown --;
      console.log(countdown);

    } else {
      clearInterval(id);
    }
  }, 1000);
};


trainCrew = (namesArray) => {
  for(let name of namesArray) {
    newMember = new CrewMember(name);
    newMember.trained = true;
    crewObjectsArray.push(newMember);
  }
};

trainCrew(crewNames);

launchpad = (ship, objectsArray, propulsionObject) => {
  console.log(`Please prepare for launch. All unauthorized personnel must leave the launch area immediately!\n`);
  console.log(`All crew, please report to ${ship.name} for imminent takeoff.\n`);
  ship.loadCrew(objectsArray);
  console.log(`\nLooks like ${ship.captain().name} is our Captain for the day...\n`);
  ship.mountPropulsion(propulsionObject);
  countdown(10);
  setTimeout(function() {
    propulsionObject.addFuel(100);
    ship.takeoff();
  }, 10100);
};

launchpad(ourShip, crewObjectsArray, rocket);
