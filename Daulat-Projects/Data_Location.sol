// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//3 types of data location
//1. STORAGE: This is store on the blockchain
//2. MEMORY: Runs only in the function for runtime exection only
//3. CALLDATA: Runs only as argument

contract DataLocation {
    uint [] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    // function f() public {
    //     // call _f with state variables
    //     _f(arr, map, MyStruct[1]);

    //     //get a struct from mapping
    //     MyStruct storage myStruct = myStructs;

    //     //create a struct in memory
    //     MyStruct memory myMemSrruct = MyStruct(0);

    // }

    function _f( 
        uint[] storage _arr, 
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct    
    ) internal {
        // Do something with storage variable
    }

    function g(uint[] memory _arr) public returns (uint[] memory) {
        //do something with memory array
    }

    function h(uint[] calldata _arr) external {
        //do something with calldata array
    }

}