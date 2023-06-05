import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import SearchPage from './components/SearchPage';

function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={SearchPage} />
      </Switch>
    </Router>
  );
}

export default App;
