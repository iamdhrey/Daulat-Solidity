// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Events can be used for cheaper gas fee instead onf storage on the blockchain.
//Events emit whats is indexed in the event for logging

contract Events {
    //Event declaration
    //Up to 3 parameters can be indexed.
    //Index parameter helps you filter the logs by the index parameter.

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello Solidity");
        emit Log(msg.sender, "Hello EVM");
        emit AnotherLog();
    }

}