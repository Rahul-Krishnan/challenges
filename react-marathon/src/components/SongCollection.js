/* jshint esversion: 6 */
import React, { Component } from 'react';
import Song from './Song';

class SongCollection extends Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  render(){
    let songs = this.props.songs.map(songElement => {
      let className = "";
      if(this.props.selectedSongId === songElement.id) {
        className="selected";
      }
      let handleSongSelect = () => {
        this.props.handleSongSelect(songElement.id);
      };

      return(
        <Song
          key={songElement.id}
          name={songElement.name}
          artist={songElement.artist}
          album={songElement.album}
          className={className}
          handleSongSelect={handleSongSelect}
        />
      )
    })
    return(
      <ul>
        {songs}
      </ul>
    )
  }
}
export default SongCollection
