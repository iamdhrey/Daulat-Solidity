// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


/*
Functions and state variable have to declare whether they are accessible by other contract
functions can be declared as 

Public: any contracts and account can call
Private: Only inside the contract that defines the function
Internal: Only inside the contract that inherit an internal contract
External: Only other contracts and accounts can call.
*/



//Private function can only be called inside this contract
// contract that inherit this contract can not call this function

contract Base {

    //State Variable cannot be external so this code wont compile
    //string external externalVar = "My external Variable"
    string private privateVar = "My private variable";
    string internal internalVar = "My internal variable";
    string public publoicVar ="My public variable";

    function privateFunc() private pure returns(string memory) {
        return "Private function called";
    }

    function testPrivateFunc() public pure returns(string memory) {
        return privateFunc();
    }

    // Internal function can be called inside the contract
        //inside contracts that inherit this contract
    function internalFunc() internal pure returns (string memory) {
        return "Internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    //Public functions can be called inside this contract
    //inside contracts that inherit this contract
    //by other contracts and accounts
    function publicFunc() public pure returns (string  memory) {
        return "Public function called";
    }

    //External function can only be called by other contracts and account
    function externalFunc() external pure returns (string memory) {
        return "External Function called";
    }
}


contract Child is Base {

    //Inherited contract do not have access to private functions and state variable
    //Internal function can be called inside child contracts

    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
}