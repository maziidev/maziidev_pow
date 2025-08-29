// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleOwnership {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // This is the modifier. it checks if the caller is the owner.

    modifier onlyOwner() {
        if (msg.sender != owner){
            revert("Not the owner");
        }
        _;
    }

    function changeOwner(address newOwner) public onlyOwner(){
        owner = newOwner;
    }
}