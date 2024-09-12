// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract StateVariable {

    // Few things to keep in mind with state variable
        
    // string public defaultText = "Hello default!";
    // uint public defaultNum = 5;

    // //byte is similar to string that helps to save gas fees. converts the string to byte to majorly saves gas
    // bytes public defaultBytes = "Saves Gas";

    // uint[] public myNumber; // this is an empty array on positives number
    
    string public myState;
    uint public myNum;

    //updating the stateVariable with a constructor

    // constructor(string memory _text, uint _value){
    //     myState = _text;
    //     myNum = _value;
    // }

    // Using constructor and function to update state variable

    function updateState(string memory _text, uint _value) public {
        myState = _text;
        myNum = _value;
    }


}