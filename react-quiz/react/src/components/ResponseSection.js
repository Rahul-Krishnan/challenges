/* jshint esversion: 6 */
import React from 'react';

const ResponseSection = props => {
  if (props.correct==="none") {
    return(
      <div>

      </div>
    );
  }
  else if (props.correct===true){
    return (
      <div>
        <h1 id="correct">Correct!</h1>
      </div>
    )
  }
  else {
    return (
      <div>
        <h1 id="incorrect">Incorrect</h1>
      </div>
    )
  }
}

export default ResponseSection;
