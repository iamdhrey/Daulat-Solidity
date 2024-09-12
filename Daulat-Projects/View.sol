// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract View{
    uint Num1 = 5;
    uint Num2 = 89;

    function getResult() public view returns(uint,uint){
        return(Num1, Num2);
    }

    function result() public view returns (uint product, uint total){
        product = Num1 * Num2;
        total = Num1 + Num2;
        return (product, total);
    }
}
// View is basically calling the define values from the state variables into the function for computation.
//If you need to update the state variable  you cant use view modifyers