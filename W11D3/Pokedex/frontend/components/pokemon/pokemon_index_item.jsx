import React from 'react';
import { Link } from "react-router-dom";

const PokemonIndexItem = (props) => {

return (

            <div>
                    <ul key={props.pokemon.id}>
                        <li>
                            <Link to={`/pokemon/${props.pokemon.id}`}>
                                <span>{props.pokemon.id}</span>
                                <img src={props.pokemon.imageUrl} height = "100" width = "100"/>
                                <span>{props.pokemon.name}</span>
                            </Link>
                        </li>
                    </ul>
            </div>
)

}

export default PokemonIndexItem;

