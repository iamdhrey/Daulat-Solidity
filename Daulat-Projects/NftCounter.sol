// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NftCounter {
    uint public numberOfNFT;

    function checkTotalNFT () public view returns(uint){
        return numberOfNFT;
    }

    function addNft() public {
        numberOfNFT += 1;
    }

    function deleteNFT() public {
        numberOfNFT -= 1;
    }
}