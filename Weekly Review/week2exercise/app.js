/* jshint esversion: 6 */

//JS goes here


//Use seatgeek API


// Create an event class
class Event {
  constructor(name, venue) {
    this.name = name;
    this.venue = venue;
  }

  summary() {
    return (`This event is ${this.name} and is located at ${this.venue}!`);
  }
}
let eventsArray = [];
// Make a fetch call to get seatgeek info
fetch('https://api.seatgeek.com/2/events?venue.state=MA')
  .then(response => {
    if(response.ok) {
      return response;
    } else {
      let error = "No seats for you!";
      throw(error);
    }
  })
  .then(response => {
    return response.json();
  })
  .then(parsedData => {
    let eventData = parsedData.events;
    let element = document.getElementById('events');
    element.innerHTML += '<ul id="event-list"></ul>';
    let list = document.getElementById('event-list');
    for (let event of eventData) {
      let newEvent = new Event(event.title, event.venue.name);
      eventsArray.push(newEvent);
      list.innerHTML += `<li>${newEvent.summary()}</li>`;
    }
    console.log(eventsArray);
  });



debugger;
