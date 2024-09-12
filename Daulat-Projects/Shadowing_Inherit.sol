// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// shadowing is concept in smart contract, it allows to inherit state varaible

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory) {
        return name;
    }
}

//shadowing is disallowed in solidity 0.6
//this will not compile
// contract B is A {
//     string public name = "Contract B"
// }

contract C is A {
    //this is the correct way to overide inheirted state variable
    // C.getName returns "Contract C"
    constructor() {
        name = "Contract C";
    }
}