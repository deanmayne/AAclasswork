import React from 'react';

class Clock extends React.Component{
    constructor(props) {
        super(props);
        this.state = { time: new Date() }

        this.tick = this.tick.bind(this);
    }

    tick() {
        this.setState({ time: new Date() });
    }

    componentDidMount() {
        this.handle = setInterval(this.tick, 1000);
    }

    componentWillUnmount(){
        clearInterval(this.handle);
    }

    render() {
        return (
            
            <div>
                <h1>Clock</h1>
                <h2>Time</h2>
                <h2>{this.state.time.getHours()}:{this.state.time.getMinutes()}:{this.state.time.getSeconds()} PDT</h2>
                <h2>Date</h2>
                <h2>{this.state.time.getDay()} {this.state.time.getMonth() + 1} {this.state.time.getDate()} {this.state.time.getYear()+1900}</h2>

            </div>

        )
    }


}

export default Clock;