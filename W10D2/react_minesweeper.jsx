import React from 'react';
import ReactDOM from 'react-dom';
import Tile from './components/tile';
import Game from './components/game';


document.addEventListener("DOMContentLoaded", () => {

    // const main = document.getElementById('root');
    ReactDOM.render(<Game/>, document.getElementById('main'))
})


