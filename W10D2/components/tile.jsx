import React from 'react';


class Tile extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            explored: false,
            flagged: false,
            bombed: false,
            revealedSymbol: "Blank"
        }

       this.handleClick = this.handleClick.bind(this)

    }

    handleClick(e){
        // alt-click on hidden tile => flagging tile
        if (e.altKey && this.state.explored === false && this.state.flagged === false){ 
            const flagged = true
            this.props.updateGame(this.props.tile, flagged);
            this.setState({flagged: true, revealedSymbol: "flagged"})



            // reg-click on hidden tile => reveal bomb count or bomb or explore
        } else if (!e.altKey && this.state.explored === false ){
            if(this.props.tile.adjacentBombCount() === 0 ){
                this.props.tile.explore();
                this.setState({explored: true, revealedSymbol: 0})

                
            }else{
                if(!this.props.tile.bombed){
                    this.setState({explored: true, revealedSymbol: this.props.tile.adjacentBombCount()})

                    
                }else{
                    this.setState({explored: true, revealedSymbol:"X"})

                }
            }
            //alt click on flagged tile => normal blank tile
        }else if (e.altKey && this.state.flagged === true){
            this.setState({ explored: false, revealedSymbol: "Blank" })
        }
        
    }



    render(){
    
       
        return(
            <div className = {this.state.status} onClick = {this.handleClick}> 
                {this.state.revealedSymbol}
            </div>

        )
    }
}

export default Tile;



        