Array.prototype.myEach = function(callback) {
    for (let i = 0; i < this.length; i++) {
        callback(this[i]);
    }

};

function callback(number){
    console.log(number + 2);
};

Array.prototype.myMap = function(proc) {
    const newArray = [];

    this.myEach( num => 
        newArray.push(proc(num))
        );

    return newArray;


};

Array.prototype.myReduce = function(block, acc){
    acc ||= 0

    for(let i = 0; i < this.length; i++){
        acc += this[i]
    }

    return acc;

};

function block(acc, ele){ 
    return acc + ele; 
};




// arr.forEach(ele => console.log(ele.toUppercase()))
