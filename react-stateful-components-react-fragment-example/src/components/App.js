/* jshint esversion: 6 */
// App.js
import React, { Component } from 'react';
import StatefulListItem from './StatefulListItem';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      listItems: [
        {
          id: 1,
          name: 'item one'
        },
        {
          id: 2,
          name: 'item two'
        }
      ]
    };

    this.handleSwitchButtonClick = this.handleSwitchButtonClick.bind(this);
  }

  handleSwitchButtonClick(event) {
    let firstListItem = this.state.listItems[0],
        secondListItem = this.state.listItems[1],
        nextListItems = [
          secondListItem,
          firstListItem
        ];

    this.setState({ listItems: nextListItems });
  }

  render() {
    let firstListItem = this.state.listItems[0],
        secondListItem = this.state.listItems[1],
        firstStatefulListItem,
        secondStatefulListItem,
        statefulListItems;

    firstStatefulListItem = <StatefulListItem key={firstListItem.id} name={firstListItem.name} />;
    secondStatefulListItem = <StatefulListItem key={secondListItem.id} name={secondListItem.name} />;
    statefulListItems = [firstStatefulListItem, secondStatefulListItem];

    return(
      <div>
        <ul>
          {statefulListItems}
        </ul>
        <button onClick={this.handleSwitchButtonClick}>Switch List Item Positions</button>
      </div>
    );
  }
};

export default App;
