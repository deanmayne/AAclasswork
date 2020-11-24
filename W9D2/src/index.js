const MovingObject = require('./moving_object.js');
const Game = require("./game.js");

document.addEventListener('DOMContentLoaded', () => {
    const canvasElement = document.getElementById('game-canvas');
    const ctx = canvasElement.getContext('2d');
})

window.MovingObject = MovingObject;

window.Game = Game;