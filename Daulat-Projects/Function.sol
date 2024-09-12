// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//what is the role of function of smart contract in solidity:
// A function is basically a group o0f code that can be re-used anywhere in the program. saves excessive
// use of memory and decrease runtime of program.

//FUNCTION TYPES

//-- Declaring function
    //modifying variables
    //Emitting events
    //creating other contracts
    //Using self destruct
    //Sending Ether via call
    //marked pure or view
    //assembly certain opcode
    //using low level calls


//-- Non declaring function

//function function _name(parameter_list) scope return (return_type) { #block of code}

contract ContractFuncrion {
    uint public hey;

     function addData(uint _hey) public {
        hey = _hey;
    }

    function getInfo() public view returns(uint){
        return hey;
    }

    function updateData(uint _hey) public returns(uint){
        hey = _hey;
        return hey;
    }

   
    function getNew(uint _a, uint _b) public pure returns(uint){
        uint newNumber = _a + _b;
        return newNumber;
    }
}

//ABI: Application Binary Interface

