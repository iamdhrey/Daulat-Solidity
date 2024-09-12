// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Structs allows us to create a related data, it can be created in a seperate file
// and imported into smart contracts

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    //When a struct is declared you have to define an array
    //An array of "Todo" structs
    Todo[] public todos;

    function create(string calldata _text) public {

        // 3 ways to initialize a struct
        // -  calling it like a function

        todos.push(Todo(_text, false));

        // Key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // Initialize  an empty struct and update it.
        Todo memory todo;
        todo.text = _text;

        //todo.completed initialize to false
        todos.push(todo);
    }
    //Solidity automatically create a getter for todos so you dont need the below function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);

    }

    //Update Text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    //Update Completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}