// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Constructor are optional and can only be execute at the time of creation

contract X {

    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

contract Y {

    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters

// 1. Pass the parameters here in the inheritance list. REMEMBER The order is important.

contract B is X("Input for X"), Y("Input for Y") {

}

    //pass the parameter here in the constructor
    // similar to function modifiers
contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {

    }
}

// Parent constructor are always called in the order of inheritance
// regardless of the order of parent contracts listed in the constructor of the child contract

//Order of contructor called
//X => Y => D

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {

    }
}

contract E is X, Y {
    constructor() Y("Y was called") X("X was called"){
        
    }
}