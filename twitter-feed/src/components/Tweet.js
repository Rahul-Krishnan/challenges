/* jshint esversion: 6 */
import React from 'react';

const Tweet = (props) => {
  let clickReply = () => {
    alert("Reply");
  };
  let clickLike = () => {
    alert("Like");
  };
  let clickRetweet = () => {
    alert("Retweet");
  };
  let clickMore = () => {
    alert("Favorite");
  };
  let externalMediaCheck = !(typeof(props.media.media)==="undefined");

  return(
    <div className={`tweet-box well well-lg ${props.className}`} onClick={props.handleClick}>

      <img src={props.userPhoto}/>
      <b><span className="user-name">
        &emsp;
        {props.name}
      </span></b>
      <span className="screen-name">
        &emsp;&emsp;
        @{props.screenName}
      </span>
      <p>
        { !externalMediaCheck && props.text}
        { externalMediaCheck && props.text.replace(props.media.media[0].display_url,"")}
      </p>
      <p>
        { externalMediaCheck && <img src={props.media.media[0].media_url} width="400"/>}
      </p>

      <span className="reply" onClick={clickReply} >
        &emsp;&emsp;
        <i className="fa fa-reply"></i>
      </span>

      <span className="retweet">
        &emsp;&emsp;&emsp;&emsp;
        { props.retweeted && <i className="fa fa-retweet green" aria-hidden="true" onClick={clickRetweet}></i> }
        { !props.retweeted && <i className="fa fa-retweet" aria-hidden="true" onClick={clickRetweet}></i> }
        &emsp;
        { props.retweetCount }
      </span>

      <span className="like">
        &emsp;&emsp;&emsp;&emsp;
        { props.favorited && <i className="fa fa-heart red" aria-hidden="true" onClick={clickLike}></i> }
        { !props.favorited && <i className="fa fa-heart-o" aria-hidden="true" onClick={clickLike}></i> }
        &emsp;
        { props.favoriteCount }
      </span>

      <span className="more" onClick={clickMore}>
        &emsp;&emsp;&emsp;&emsp;
        <i className="fa fa-ellipsis-h"></i>
      </span>
    </div>

  );
};

export default Tweet;
