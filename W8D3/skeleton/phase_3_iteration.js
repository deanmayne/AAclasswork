Array.prototype.bubblesort = function () {
    let sorted = false
    while (!sorted) {
        sorted = true
        for (let i = 0; i < this.length - 1; i++) {
            if (this[i+1] < this[i]){
                a = this[i];
                b = this[i+1];
                this[i] = b;
                this[i+1] = a;
                sorted = false
            }
        }
    }

    return this;
};

// [this[i],this[i+1]] = [this[i+1],this[i]]

String.prototype.substrings = function(){
    const newArray = [];

        for (let i = 0; i < this.length; i++) {
            for (let j = i; j < this.length; j++) {   
                newArray.push([this.slice(i,j+1)]);

            }
         }

    return newArray;
};


