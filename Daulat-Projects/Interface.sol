// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
You can interact with other contracts by declaring interface

Interface
cannot have any functions implemented
can inherit from other interfaces
all declared functions must external
cannot declare a constructor
cannot declare state variable
*/

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

interface ICounter {
    function count() external view returns (uint);

    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}