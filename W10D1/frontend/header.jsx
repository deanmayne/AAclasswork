import React from 'react'

class Header extends React.Component{
    constructor(props){
        super(props);
        // this.state = {}
    }

    render(){
        return (
            <button onClick={() => this.setState()}></button>
        );

    }
}

export default Header