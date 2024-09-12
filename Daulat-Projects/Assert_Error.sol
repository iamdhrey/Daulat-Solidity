// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract AssertStatement{

    bool result;

    function checkOverFlow(uint _num1, uint _num2) public {
        uint sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    function getResult() public view returns(string memory){
        if(result == true){
            return "No Overflow";
        } else {
            return "Overflow Exist";
        }
    }
}

//Key difference between Assert and Require is that require has a message as part of the parameter
// assert doesnt have.
