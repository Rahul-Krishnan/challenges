/* jshint esversion: 6 */
import React from 'react';
import ReactDOM from 'react-dom';

let divElement = <div>
  <div className="jumbotron">
    <div id="close-button" onClick={event => confirm("Are you sure?")}>
      <i className="fa fa-times fa-lg" aria-hidden="true"></i>
    </div>

    <h1 id="pop-up" className="outer-box">
    You have won tickets to see Taylor Swift!
    </h1>

    <h2>
      Please enter your email so we can send you the tickets
    </h2>

    <form id="form">
      <input type="text" placeholder="Your email here"/>
      <input type="submit" value="Claim your prize!" onSubmit={event => preventDefault(), console.log("Form submitted!")}/>
    </form>
  </div>
</div>;

export default divElement;
