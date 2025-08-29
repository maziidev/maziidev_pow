// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract CustomErrorExample {

    uint256 public balance = 100;

    // let's define our custom error here
    error InsufficientFunds(uint256 required, uint256 available);

    // old way: using a string message
    function withdrawOld(uint256 amount) public {
        require(amount <= balance, "insufficient funds.");
        balance -= amount;
    }

    // new way using a custom error
    function withdrawNew(uint256 amount) public{
        if(amount > balance) {
            revert InsufficientFunds({
                required: amount,
                available: balance
            });
        }
        balance -= amount;
    }


    address public owner;

    error Unauthorized(address caller);

    constructor(){
        owner=msg.sender;
    }

    function changeOwner(address newOwner) public {
        if(msg.sender != owner){
            revert Unauthorized({caller: msg.sender});
        }

        owner = newOwner;
    }

}