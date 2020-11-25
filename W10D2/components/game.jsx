import React from 'react';
import * as Minesweeper from '../minesweeper.js';
import Board from './board';


class Game extends React.Component{
    constructor(props){
        super(props)

        this.state = {
        board: new Minesweeper.Board(10, 1)
        }

        this.updateGame = this.updateGame.bind(this)
    }

    updateGame(tile, flagged){
        
        if (flagged){
            // return tile.toggleFlag()
            // console.log("Flag worked")
        }else{
            // return tile.explore()
            console.log("Regular Click")
        }

    }

    render(){
        console.log(this.state.board);
        return(
            <Board board = {this.state.board} updateGame = {this.updateGame}/>
            
        )
    }
}



export default Game;