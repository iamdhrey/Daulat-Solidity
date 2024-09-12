// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

enum Status {
    Pending,
    Shipped,
    Delivered,
    Rejected,
    Canceled
}


//This is basically importing your Enum from another file
// import "./EnumDeclaration.sol";

contract Enum {
    Status public status;
}