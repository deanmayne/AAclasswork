Array.prototype.uniq = function() {
    const newArray = [];
    for (let i = 0; i < this.length; i++) {
        if (!newArray.includes(this[i])) {
            newArray.push(this[i]);
        }
    }

    return newArray;

};

Array.prototype.twoSum = function() {
    const newArray = [];
    for (let i = 0; i < this.length - 1; i++) {
        for (let j = i + 1; j < this.length ; j++) {
            if (this[i] + this[j] === 0) {
                newArray.push([i,j]);
            }
        }
    }
    return newArray;

};

Array.prototype.transpose = function() {
    const newArray = this.slice();

    for (let i = 0; i < newArray.length - 1; i++) {
        for (let j = i + 1; j < newArray.length; j++) {
            const a = newArray[j][i];
            const b = newArray[i][j];
            newArray[j][i] = b;
            newArray[i][j] = a;
        }
    }

    return newArray;



};



