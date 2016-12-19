/* jshint esversion: 6 */
import './app.scss';
import React from 'react';
import ReactDOM from 'react-dom';


let divElement = <div>
  <div className="jumbotron">
    <div onClick={event => confirm("Are you sure?")}>
      <i className="fa fa-times fa-lg" aria-hidden="true"></i>
    </div>

    <h1 id="pop-up" className="outer-box">
    You have won tickets to see Taylor Swift!
    </h1>

    <h2>
      Please enter your email so we can send you the tickets
    </h2>

    <form id="form">
      <input type="text" defaultValue="Your email here"/>
      <input type="submit" value="Claim your prize!" onSubmit={console.log("Form submitted!")}/>
    </form>
  </div>
</div>

ReactDOM.render(
  divElement,
  document.getElementById('app')
);
