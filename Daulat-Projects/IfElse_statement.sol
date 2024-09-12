// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract IfElse{

    uint myNum = 5;
    string public myString;

    // function get(uint _num) public returns (string memory){
    //     if(_num == 5){
    //         myString = "Value is equal 5";
    //     } else if (_num == 10){
    //         myString = "Value is 10";
    //     } else {
    //         myString = "Value is neither 5 nor 10";
    //     }
    //     return myString;
    // }


    function shortHand(uint _num) public returns (string memory){
        return _num == 5 ? myString = "Value is 5" : myString = "Try again!";
    }
}