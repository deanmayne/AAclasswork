import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root"

// window.store = configureStore();
// window.receiveTodo = receiveTodo;
// window.receiveTodos = receiveTodos;


let preloadedState = preloadedState ||= {}

// preloadedState = {
//     todos: {
//         1: { title: 'Hoji Cha', body: 5, id: 1 },
//         2: { title: 'Peach', body: 4, id: 2 }
//     }
// }



const store = configureStore(preloadedState);



document.addEventListener('DOMContentLoaded', () => {


    ReactDOM.render(<Root store={store}/>, document.getElementById("main"))
})

