import React from 'react';
import TodoListItem from './todo_list_item'



class TodoList extends React.Component{

    render(){
        const {todos, receiveTodos} = this.props;
        const todoItems = todos.map(todo => <TodoListItem todo = {todo} key = {todo.id}/>)
        

    return (
        <div>
            <h1>Todos !</h1>
            {todoItems}


        </div>
    )
}
}

export default TodoList;