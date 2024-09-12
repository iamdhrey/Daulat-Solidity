// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Array {

    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr; // means you cant have more than 10 in the array

    function get(uint i) public view returns (uint){
        return arr[i];
    }

    //Solidity can return the entire array
    //But this function should be avoided for arrays that can grow indefinitely in length
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    //Append to array
    //this will increase the array lemgth by 1
    function push(uint i) public {
        arr.push(i);
    }

    //Remove last element from array
    //this will decrease the array length by 1
    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    //delete does not change array length
    //it reset the value at index to its default value, in these case 0
    function remove(uint index) public {
        delete arr[index];
    }

    //create array in memory, only fixed size can be created
    //This is how to create a fixed array into memory
    function example() external pure {
        uint[] memory _array = new uint[](5);

    }
}