// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//SYNTAX
//  The for loop syntax: 
// for (initialization; test condition; iteration){
//     statemwnt or block of code to be executed if condition is met
// }
//         for (uint i = 1; i <= 10; i++) {
//             sum += i; 


contract ForLoopExample {
    
    uint[] data;

    function loop() public returns(uint[] memory){
        for (uint i = 0; i < 5; i++){
            data.push(i);
        }
        return data;
    }
}


// Always try to avaoid loop in your smart contract. if you ever need to use loop avaoid dynamic
// and use only a range of number you expect to loop through.