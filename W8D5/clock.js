class Clock {
    constructor() {
        // 1. Create a Date object.
        // 2. Store the hours, minutes, and seconds.
        // 3. Call printTime.
        // 4. Schedule the tick at 1 second intervals.

        this.date = new Date();
        this.hours = this.date.getHours();
        this.minutes = this.date.getMinutes();
        this.seconds = this.date.getSeconds();

        this.printTime(this.hours, this.minutes, this.seconds);

        setInterval(this._tick.bind(this), 1000);

        
    };

    printTime() {
        // Format the time in HH:MM:SS
        // Use console.log to print it.

        let time = `${this.hours}:${this.minutes < 10 ? '0'.concat(this.minutes) : this.minutes}:${this.seconds < 10 ? '0'.concat(this.seconds) : this.seconds}`
        console.log(time)
    };

    _tick() {
        // 1. Increment the time by one second.
        // 2. Call printTime.

        // increment this.seconds by 1 second
        // if this.seconds % 59 == 0 then 
            // this.seconds = 0
            // increments by 1

            if ((this.seconds += 1) % 60 === 0 ){
                this.seconds = 0
                this.minutes += 1;

            }

            if (this.minutes % 60 === 0) {
                this.minutes = 0
                this.hours += 1;

            }

            if (this.hours % 24 === 0){
                this.hours = 0;

            }
            // debugger;

        this.printTime();

    };
}

const clock = new Clock();

















