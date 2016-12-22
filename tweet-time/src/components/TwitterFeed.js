/* jshint esversion: 6 */
import React, { Component } from 'react';
import Tweet from './Tweet';

class TwitterFeed extends Component {
  constructor(props) {
    super(props);
    this.state={
      selectedTweetId: null
    };
    this.handleTweetSelect = this.handleTweetSelect.bind(this);
  }

  handleTweetSelect(id) {
    this.setState({ selectedTweetId: id });
  }

  render() {
      let tweets = this.props.data.map(tweet => {

        let handleClick = () => {
          this.handleTweetSelect(tweet.id_str);
        };
        let className;
        if(tweet.id_str === this.state.selectedTweetId) {
          className="selected";
        }

        return(
          <Tweet
            key={tweet.id_str}
            name={tweet.user.name}
            userPhoto={tweet.user.profile_image_url}
            text={tweet.text}
            handleClick={handleClick}
            className={className}
          />
        )
      });
    );
  }
}

// Stateless TwitterFeed:
//
// const TwitterFeed = props => {
//   let tweets = props.data.map(tweet => {
//     return(
//       <Tweet
//         key={tweet.id_str}
//         name={tweet.user.name}
//         userPhoto={tweet.user.profile_image_url}
//         text={tweet.text}
//       />
//     )
//   });
//   return(
//     <div>
//       {tweets}
//     </div>
//   )
// }

export default TwitterFeed;
