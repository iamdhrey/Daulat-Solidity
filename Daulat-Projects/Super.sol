// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Super Keyword allows a contract to inherit the entire parent contract


//This is called an event. you can emit events from your functions
// and are loged into the transaction log
//In our case case, this will be useful for tracing function calls

contract A {
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.bar called");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        super.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("C.bar called");
        super.bar();
    }
}

//-Call D.foo and check the transaction logs
//Although D inherits A, B, C it only called C and A
// D called C, then B and finally A
//Although super was called twice (by B and C) it only called A  once

contract D is B, C {
    function foo() public virtual override (B, C) {
        super.foo();
    }

    function bar() public virtual override (B, C) {
        super.bar();
    }
}