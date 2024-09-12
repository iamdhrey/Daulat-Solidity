// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Constants{

    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //this does save gas
    // address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 // does not save gas

    function getConstant() public pure returns (address) {
        return MY_ADDR;
    }
    
}

//Reasons to use constant, We specifically dont want the variable to change and also when 
// this variable dont change. it saves gas.

// In your example, the getConstant function retrieves the value of MY_ADDR and returns it. 
// Since MY_ADDR is a constant and does not change the state of the contract, the function 
// is marked as pure to explicitly state that it doesn't read or modify the contract state.

// SO BASICALLY A PURE CAN READ A STATE IF THE VARIABLE IS CONSTANT