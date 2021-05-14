import logo from './logo.svg';
import './App.css';
import Cadastro from './Cadastro';
import VoluntarioCadastro from './VoluntarioCadastro';
import Login from './Login';
import TipoAnimal from './TipoAnimal';
import AnimalCadastro from './AnimalCadastro';
import Home from './Home';
import Dashboard from './DashBoard';
import routes from "./routes";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

const { home, register, login, dashboard, animalregister, tipoanimal, voluntaryregister } = routes;

function App() {
  return (
    <div className="App">
        <Router>
          <Switch>
            <Route exact path={home}>
              <Home />
            </Route>
            <Route path={tipoanimal}>
              <TipoAnimal/>
            </Route>
            <Route exact path={animalregister}>
              <AnimalCadastro />
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
          </Switch>
        </Router>
    </div>
  );
}

export default App;
