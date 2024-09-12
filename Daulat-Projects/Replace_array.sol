// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// when removing an element in an array, it reset the value to 0 and the length
//is still the same, but when you delete, it delete the whole array. so delete an element
//in an array it advisable to move that element to the end of od the array and use the pop
//method to remove it and that reset the length instead of making it zero.



contract ArrayReplaceFromEnd {

    uint[] public arr;

    function remove(uint index) public {
        //move the last element into the place to delete
        arr[index] = arr[arr.length - 1];
        //remove the last element
        arr.pop();

    }

     function test() external {
        arr = [1, 2, 3, 4];

        remove(1);
        //[1, 4, 3]

        assert(arr.length == 4);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);
             
        remove(2);
        //[1, 4]

        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);

    }
}