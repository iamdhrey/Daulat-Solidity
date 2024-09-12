// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Mapping helps to track data into smart contracts.
// mapping(keyType => valueType)


contract Mapping {
    //mapping from address to uint
    mapping(address => uint) public myMap;

        //Mapping always return a value id defined
        //If not defined it will return a default value
    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
        
    }

    //Update the value of this address
    function set(address _addr, uint _id) public {
        myMap[_addr] = _id;
    }

    //Reset the value to the default value
    function remove(address _addr) public {
        delete myMap[_addr];
    }
    
}

contract NestedMapping {

    //nestedMapping is basically using a map info to get another map information

    // Nested mapping (mapping from address to naother mapping)
    mapping(address => mapping(uint => bool)) public nested;

    // you can get the values from a nested mapping
    function get(address _addr1, uint _id1)public view returns (bool){
        return nested[_addr1][_id1];
    }

    function set(address _addr1, uint _id1, bool boo) public {
        nested[_addr1][_id1] = boo;
    }

    function remove(address _addr1, uint _id1) public {
        delete nested[_addr1][_id1];
    }

}