import {connect} from 'react-redux';
import TodoList from './todo_list';
import {allTodos} from '../../reducers/selectors';
import {receiveTodo, receiveTodos} from '../../actions/todo_actions.js';


const mapStateToProps = state => ({
    todos: allTodos(state),
    state
});


const mapDispatchToProps = dispatch => ({
    receiveTodo: todo => dispatch(receiveTodo(todo))
});
export default connect(mapStateToProps, mapDispatchToProps)(TodoList);