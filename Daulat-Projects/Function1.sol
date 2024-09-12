// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Function is the heart of any prog lang. functions gives the logic

contract Function {
    //Functions can return multiple values. 
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 5);

    }

    function named() public pure returns (uint x, bool b, uint y) {
        return ( 10, false, 7);

    }

    //return values can be assigned to their name
    //in this case the return statement can be omitted

    function assigned() public pure returns(uint x, bool b, uint y) {
        x = 4;
        b = true;
        y = 7;

    }

    //Using destructive assignment when calling another
    //function that returns multiple values

    function destructuringArguements() public pure returns(uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();

        //Values can be left out.
        (uint x, , uint y) = (5, 6, 7);
        
        return (i, b, j, x, y);


    }

    //Cannot use map for either input or output
    //can use array for input
    function arrayInput(uint[] memory _array) public {}

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns(uint[] memory) {
        return arr;
    }
}

// Call function with key value inputs

contract XYZ {

    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 7, address(0), true, "Nelson");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return  someFuncWithManyInputs({a: address(0), b: true, x: 4, y: 9, z: 2, c: "7"});
    }
}