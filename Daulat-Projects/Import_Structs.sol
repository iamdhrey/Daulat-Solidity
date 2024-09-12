// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Lets say the file name is "structDeclaration.sol"

struct Todo {
    string text;
    bool completed;
}

//import "./structDeclaration.sol"; // ---> import this into the required contracts

contract Todos {
    //An array of "todo" struct
    Todo[] public todos;
}