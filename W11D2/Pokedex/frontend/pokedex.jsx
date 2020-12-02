import React from 'react';
import ReactDOM from 'react-dom';
import { fetchAllPokemon, fetchSinglePokemon } from './util/api_util'

document.addEventListener('DOMContentLoaded', () => {
    const rootEl = document.getElementById('root');

    //testing
    window.fetchAllPokemon = fetchAllPokemon;
    window.fetchSinglePokemon = fetchSinglePokemon;
    //end testing
    ReactDOM.render(<h1>Pokedex</h1>, rootEl);
});