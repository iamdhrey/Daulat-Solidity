// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Solidity support multiple inheritance. Contracts can inherit other contract by uisng the "IS" keyword
//Function that is going to be overridden by a child contract  must be declared as "VIRTUAL"
// Function that is going to overrride a parent function must use the keyword "OVERRIDE"


contract A {

    function foo() public pure virtual returns(string memory) {
        return "A";
    }

}

// Contract inherit other contracts by using the keyword "is"
contract B is A {
    //overide A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    //overide A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// contracts can inherit from multiple parrent contracts. when a function is called that is defined multiple times in
//different contracts, parents contracts are searched from right to left, and in-depth-first manner.

contract D is B, C {
    // D.foo() returns C
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // D.foo() returns C
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

//Inheritance must be ordered from "most based-like" to "most derived"
//swapping the order of A and B will throw a compillation error

contract F is A, B {
    function foo() public pure override (A, B) returns (string memory) {
        return super.foo();
    }
}