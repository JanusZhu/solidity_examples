// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

contract Todos {

    //create a custom struct called Todo

    struct Todo {
        string text;
        bool completed;
        }

    //below we created a data type of Todo which is the struct to create an array

    Todo[] public todos; 

    function create (string memory _text) public {
    //Push a new todo struct into the array
        todos.push(Todo(_text, false));  
    }
    function getInfo (uint _index) public view returns (string memory, bool) {
        Todo storage todo = todos[_index];
    //this is how you get information out of a struct state variable
        return (todo.text, todo.completed); 
    }

}
