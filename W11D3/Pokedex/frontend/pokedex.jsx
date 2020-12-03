import React from 'react';
import ReactDOM from 'react-dom';
import { fetchAllPokemon, fetchSinglePokemon } from './util/api_util';
import {receiveAllPokemon, requestAllPokemon} from './actions/pokemon_actions';
import {configureStore} from './store/store';
import { selectAllPokemon } from './reducers/selectors';
import Root from './components/root';


document.addEventListener('DOMContentLoaded', () => {
    const rootEl = document.getElementById('root');
    const store = configureStore();
    //testing
    window.fetchAllPokemon = fetchAllPokemon;
    window.fetchSinglePokemon = fetchSinglePokemon;
    window.receiveAllPokemon = receiveAllPokemon;
    window.requestAllPokemon = requestAllPokemon;
    window.selectAllPokemon = selectAllPokemon;
    window.getState = store.getState; 
    window.dispatch = store.dispatch;
    //end testing
    
    // ReactDOM.render(<h1>Pokedex</h1>, rootEl);
    ReactDOM.render(<Root store = {store} />, rootEl);
});