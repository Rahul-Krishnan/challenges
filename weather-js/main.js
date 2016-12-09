/* jshint esversion: 6 */
// your code, here

let skycons = new Skycons({"color": "grey"});

let currentSummary = '';
let currentIcon = '';
let currentTemp = '';

fetch('https://api.darksky.net/forecast/303c63607957455081e0a054e6e9753b/42.35,-71.07')

  .then(response => {
    console.log('response', response);
    console.log('response.status:', response.status);
    console.log('response.statusText:', response.statusText);
    console.log('response.ok:', response.ok);
    return response.text();
  })
  .then(responseBody => {
    console.log('responseBody:', responseBody);
    let allWeather = JSON.parse(responseBody);

    let currentWeather = allWeather.currently;

    currentSummary += currentWeather.summary;
    currentIcon += currentWeather.icon;
    currentTemp += currentWeather.temperature;

    let summaryElement = document.createElement('h2');
    let summaryText = document.createTextNode(currentSummary);
    summaryElement.appendChild(summaryText);

    let tempElement = document.createElement('h2');
    let tempText = document.createTextNode(currentTemp);
    tempElement.appendChild(tempText);

    let body = document.getElementsByTagName('body')[0];

    body.appendChild(summaryElement);
    body.appendChild(tempElement);

    skycons.add(document.getElementById("icon1"), currentIcon);
  });

  // start animation!
  skycons.play();

// on Android, a nasty hack is needed: {"resizeClear": true}

// you can add a canvas by it's ID...
// skycons.add("icon1", PARTLY_CLOUDY_DAY);

// ...or by the canvas DOM element itself.

// if you're using the Forecast API, you can also supply
// strings: "partly-cloudy-day" or "rain".



// you can also halt animation with skycons.pause()

// want to change the icon? no problem:
// skycons.set("icon1", PARTLY_CLOUDY_NIGHT);

// want to remove one altogether? no problem:
// skycons.remove("icon2");
