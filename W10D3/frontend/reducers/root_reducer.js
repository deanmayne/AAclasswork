import { combineReducers } from 'redux';
import todoReducer from './todos_reducer';
import {receiveTodos, receiveTodo} from '../actions/actions';
const rootReducer = combineReducers({
    todos: todoReducer
});

export default rootReducer;