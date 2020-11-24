const Asteroid = require("./asteroid.js")

const CONSTANTS = {
    DIM_X: 400,
    DIM_Y: 400,
    NUM_ASTEROIDS: 3
}

Game.prototype.addAsteroids = function(){
    let asteroids = [];
    for (let i = CONSTANTS.NUM_ASTEROIDS; i >=0; i--){
        asteroids.push(Asteroid.new(this.randomPosition));
    }
    return asteroids;
}

Game.prototype.randomPosition = function(){
    return [CONSTANTS.DIM_X * Math.random(), CONSTANTS.DIM_Y * Math.random()]
}

Game.prototype.draw = function(ctx){
    ctx.clearRect();
    for (let asteroid of this.asteroids){
        asteroid.draw(ctx);
    }
}



module.exports = Game;



