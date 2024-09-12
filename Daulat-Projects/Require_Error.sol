// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// A require 2 statement, the condition and the message.

contract Require{

    // function checkInput(uint _input) public pure returns(string memory){
    //     require(_input >= 0, "Invalid Number");
    //     require(_input <= 255, "Invalid uint");

    //     return "input is uint8";
    // }

    function modulor(uint _input) public pure returns(bool){
        require(_input % 2 != 0);
        return true;
    }
}
// != means Equals not
// this is the best error checker. always require than the rest of error checker