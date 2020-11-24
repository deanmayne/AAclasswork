const Util = require("./utils.js");
const MovingObject = require("./moving_object.js");

const CONSTANTS = {
    color: "grey",
    radius: 20

}

function Asteroid(pos){
    let options = CONSTANTS;
    options.pos = pos;
    options.vel = Util.randomVec(2);
    MovingObject.call(this, options);
}

Util.inherits(Asteroid, MovingObject)






module.exports = Asteroid;
