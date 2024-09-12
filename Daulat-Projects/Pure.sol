// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Pure{

    uint public MyNumber = 37;
    string public text = "My pure view";

    function pureView() public pure returns (uint, string memory){
        uint Num1  = 456;
        string memory myString = "sample view";
        return (Num1, myString);
    }
}
// Pure cant read from state variable you will have to define its own local variable