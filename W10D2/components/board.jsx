import React from 'react';
import Tile from './tile';

class Board extends React.Component{
    constructor(props){
        super(props);        
    }

    // const JobIndex = (props) => {
    //     // props.listings = [jobs]
    //     const listings = props.listings.map((listing, idx) => {
    //         return <JobIndexItem key={idx}
    //             company={listing.company}
    //             title={listing.title}
    //             type={listing.type}
    //             location={listing.location}
    //         />
    //     });

    //     return(
    //         <ul>
    //              { listings }
    //         </ul >
    //   )
    


    render(){
        const mappedBoard = this.props.board.grid.map((row, index) => {
            return(
                <div className='row'>
                   {row.map((tile, index2) => {
                       
                       return(
                           <div>
                            <Tile  key = {index2} updateGame = {this.props.updateGame} tile = {tile} className = 'tile'/>
                        </div>
                       )
                    })}
                    <br></br>
                </div>

                
            )
        });
        


        return (
            <div className = "board">
                {mappedBoard}
            </div>
        )
        
    }


}


export default Board;

        // const board = this.props.board;
        // return(
        //     <div>
        //         {board.grid.map((row, index) => {
        //             let count = 0;
        //             return (
        //                 <div key={index} > 
        //                 {row.map((tile, index2) => {
        //                     count++; 
        //                     if (count < board.grid.length){
        //                         return(
        //                             <div className= "row">
        //                                 <Tile  key = {index2} updateGame = {this.props.updateGame} tile = {tile} />
        //                             </div>
        //                         )

        //                     }else{
        //                         count = 0;
        //                         return (
        //                             <div className="row">
        //                                 <Tile key={index2} updateGame={this.props.updateGame} tile={tile} />
        //                                 <br></br>
        //                             </div>
        //                         )
        //                     }
        //                 })}
        //             </div>
        //             )
        //         })}
        //     </div> 
        // )