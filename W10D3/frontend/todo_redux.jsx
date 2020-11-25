import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import {receiveTodo, receiveTodos} from "./actions/actions";
import Root from "./components/root"

window.store = configureStore();
window.receiveTodo = receiveTodo;
window.receiveTodos = receiveTodos;

const store = configureStore();



document.addEventListener('DOMContentLoaded', () => {

    ReactDOM.render(<Root store={store}/>, document.getElementById("main"))
})


