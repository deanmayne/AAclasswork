import {RECEIVE_TODOS, RECEIVE_TODO} from '../actions/actions';

const todosReducer = (currState = {}, action) =>{
    Object.freeze(currState);
    let nextState = {...currState}; 

    switch (action.type) {
        case RECEIVE_TODOS:
            
            return {...action.todos}
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo; 
            return nextState;
        default:
            return currState;
    }
}


export default todosReducer;