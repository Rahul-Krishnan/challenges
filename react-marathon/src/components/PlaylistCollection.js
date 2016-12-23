/* jshint esversion: 6 */
import React, {Component} from 'react';
import Playlist from './Playlist';

class PlaylistCollection extends Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  render(){
    let playlists = this.props.playlists.map(playlistElement => {
      let className="";
      if(this.props.selectedPlaylistId === playlistElement.id) {
        className="selected";
      }
      let handlePlaylistSelect = () => {
        this.props.handlePlaylistSelect(playlistElement.id);
      };

      return(
        <Playlist
          key={playlistElement.id}
          name={playlistElement.name}
          songs={playlistElement.songs}
          className={className}
          handlePlaylistSelect={handlePlaylistSelect}
        />
      )
    })
    return(
      <ul>
        {playlists}
      </ul>
    )
  }
}
export default PlaylistCollection;
