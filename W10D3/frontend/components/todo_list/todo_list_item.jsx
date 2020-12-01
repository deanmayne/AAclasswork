import React from 'react';

const TodoListItem = ({todo}) => {

    return (
            
            <ul>
                <li>Title: {todo.title}</li>
                <li>Body: {todo.body}</li>
            </ul>


    )
}





export default TodoListItem;



