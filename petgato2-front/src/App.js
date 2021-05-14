import logo from './logo.svg';
import './App.css';
import Cadastro from './Cadastro';
import VoluntarioCadastro from './VoluntarioCadastro';
import Login from './Login';
import TipoAnimal from './TipoAnimal';
import Home from './Home';
import Dashboard from './DashBoard';
import routes from "./routes";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

const { home, register, login, dashboard, animal, tipoanimal, voluntaryregister } = routes;

function App() {
  return (
    <div className="App">
        <Router>
          <Switch>
            <Route exact path={home}>
              <Home />
            </Route>
            <Route exact path={dashboard}>
              <Dashboard />
            </Route>
            <Route exact path={register}>
              <Cadastro />
            </Route>
            <Route exact path={voluntaryregister}>
              <VoluntarioCadastro />
            </Route>
            <Route exact path={login}>
              <Login />
            </Route>
            <Route exact path={tipoanimal}>
              <TipoAnimal />
            </Route>
          </Switch>
        </Router>
    </div>
  );
}

export default App;
