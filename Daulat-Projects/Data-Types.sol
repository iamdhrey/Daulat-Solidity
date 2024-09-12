// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// VALUE DATA TYPES IN SOLIDITY.

//BOOLEAN: ny default boolean is "false"
//INTEGER:
//FIXED POINT NUMBERS:
//ADDRESS:
//BYTES AND STRINGS:
//ENUMS:

//REFERENCE DATA TYPES

//STRUCT:
//ARRAY:
//MAPPING:

contract DataTypes {

    //POSITIVE VALUES
    //UNIT: unsigned integer meaning no negative only positive
    //unit8 ranges 0 - 2 ** 8 - 1
    //uint16 ranges 0 - 2 ** 16 - 1
    //uint32
    //setting uint ranges helps to save gas and prevent underflow

    //NEGATIVE VALUES
    //INT: negative numbers are allowed
    //int256 ranges from -2 ** 255 to 2 ** 255 - 1 
    //int128 ranges from -2 ** 127 to 2 ** 127 - 1

    //Adding Min and Max to prevent overflow and underflow
    // int public minInt = type(int).min;
    // int public maxInt = type(int).max;

    // ARRAY: there are 2 types
    //In solidity, the data types byte represent a sequence of byte, byte are more efficient with gas instead of string.
    //-- fixed size bytes array
    //-- dynamically-sized bytes array
    //When you define byte in smart contracts it represent dynamic byte array

    // bytes1 public a;
    // bytes1 public b;

    //AADRESS
    address public hey;
    address public addr = 0xDB65702A9b26f8a643a31a4c84b9392589e03D7c;

    //DEFAULT VALUES
    bool public defaultBool; // false
    uint public number; // 0
    int public dafaultInt; // 0
    address public add; //0x00

}