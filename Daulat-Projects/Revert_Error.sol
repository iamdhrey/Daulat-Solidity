// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract RevertStatement{

    
    function checkOverFlow(uint _num1, uint _num2) public pure returns(string memory, uint){
        uint sum = _num1 + _num2;

        if(sum < 0 || sum > 255){
            revert ("Overflow Exist");
        } else {
            return ("No OverFlow", sum);
        }
    }

}

// revert is the least of error checker to use. use only require for error checking