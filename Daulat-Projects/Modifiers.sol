// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Function Modifiers : They are code that can be run before and after the function call

// 3 main importances of modifiers
// -- Restrict Access
// -- Validate Inputs
// -- Guard against re-entrancy hack


contract FunctionModifier{

    address public owner;
    uint public x = 10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier validateData(address _addr){
        require(_addr != address(0), "Invalid Address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked, "No Re-entrancy");
        locked = true;
        _;
    }

    function decrement(uint i) public noReentrancy{
        x -= 1;
        if(i > 1){
            decrement(i - 1);
        }
    }
}

// Attach the modifiers to the function you want to check to either restrict, validate or avoid
// re-entrancy