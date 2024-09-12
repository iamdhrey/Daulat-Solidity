// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract GlobalVariables{

    address public owner;
    address public Myblockhash;
    uint public difficulty;
    uint public gasLimit;
    uint public number;
    uint public timestamp;
    uint public value;
    uint public nowOn;
    address public origin;
    uint public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor(){
        owner = msg.sender;
        Myblockhash = block.coinbase;
        // difficulty = block.difficulty; //block.difficulty has been deprecated to block.basefee
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        // value = msg.value;
        // nowOn = now; //deprecated to block.timestamp
        gasprice = tx.gasprice;
        callData = msg.data;
        Firstfour = msg.sig;


    }
}