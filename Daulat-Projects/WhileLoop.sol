// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


// SYNTAX
// while(condition){
//      statement or block of code to be executed if the condition is true
// }    


contract WhileLoop{

    uint [] data;
    uint8 k = 0;

    function loop() public returns(uint[] memory){
        while(k < 5){
            k++;
            data.push(k);
        }
        return data;
    }

}

// Avoid loops in the contract. its uses a lot of gas fee