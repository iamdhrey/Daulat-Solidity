// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// syntax
//  do{
//     statement or block of code to be executed
//  } while(condition)

contract DoWhile{

    uint [] data;
    uint8 j = 0;

    function loop() public returns(uint[] memory){
        do {
            j++;
            data.push(j);
        } while(j < 5);
        return data;
    }
}