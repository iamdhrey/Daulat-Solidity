// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LocalVariable {

    uint public myNumber;


    // Any new variable define inside a function are called local varaibles. state varaible store on chain but
    // local doesnt store on chain, they uses only in memory

    // function local() public pure returns (uint) {
    //     uint i = 246;
    //     return i;
    // }

    function local() public returns(address, uint, uint){
        uint i = 345;
        myNumber = i;

        i += 45;
        address addr = msg.sender;
        return (addr, myNumber, i);

    }
}