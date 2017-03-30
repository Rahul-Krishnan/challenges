/* jshint esversion: 6 */
import React, { Component } from 'react';
import { Router, Route, Link, IndexRoute, hashHistory, browserHistory } from 'react-router';

class App extends Component {
  render () {
    return (
      <Router history={hashHistory}>
        <Route path='/' component={Container}>
          <IndexRoute component={Home} />
          <Route path='address' component={Address}>
            <IndexRoute component={TwitterFeed} />
            <Route path='instagram' component={Instagram} />
          </Route>
          <Route path='*' component={NotFound} />
        </Route>
      </Router>
    )
  }
}

const Home = () => <h1>Hello from home!</h1>

const Address = (props) => <div>
  <br />
  <Link to='/address'>Twitter Feed</Link>&nbsp;
  <Link to='/address/instagram'>Instagram Feed</Link>
  <h2>We are located at 77 Summer St</h2>
  {props.children}
</div>

const NotFound = () => <h1>404: This page is not found</h1>

const Nav = () => (
  <div>
    <Link onlyActiveOnIndex activeStyle={{color:'#53acff'}} to='/'>Home</Link>&nbsp;
    <Link activeStyle={{color:'#53acff'}} to='/address'>Address</Link>
    <Link activeStyle={{color:'#53acff'}} to='/about'>About</Link>
  </div>
)

const Container = (props) => <div>
  <Nav />
  {props.children}
</div>

const Instagram = () => <h3>Instagram Feed</h3>

const TwitterFeed = () => <h3>Twitter Feed</h3>

export default App
