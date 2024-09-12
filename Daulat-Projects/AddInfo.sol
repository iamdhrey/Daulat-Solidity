// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract MyStartContract {
  //  string public hey = "Hello Dharey";
  //  uint256 public num = 40;

    string public hey;
    uint256 public num;

    // constructor(string memory _hey, uint _num){
    //     hey = _hey;
    //     num = _num;
    // }

    function addInfo(string memory _hey, uint _num) public {
        hey = _hey;
        num = _num;
    }
   
}

//The above shows how to dynamically add values to variable both with constructor and a function.