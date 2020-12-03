import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions';

const pokemonReducer = (oldState = {}, action) => {
    Object.freeze(oldState)

    const nextState = Object.assign({}, oldState)
    switch(action.type){
        case RECEIVE_ALL_POKEMON:
            return Object.assign({}, action.pokemon);
        // case RECEIVE_SINGLE_POKEMON:
        //     return nextState[action.payload.pokemon.id] = action.payload.pokemon
        default:
            return oldState;
    }
}

export default pokemonReducer;