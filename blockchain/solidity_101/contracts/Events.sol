// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract MyBank {

    // our event

    event BalanceUpdated(
        address indexed user,
        uint256 oldBalance,
        uint256 newBalance
    );

    mapping(address => uint256) public balances;

    function deposit() public payable{
        uint256 oldBalance = balances[msg.sender];
        balances[msg.sender] += msg.value;


        // we emit BalanceUpdated

        emit BalanceUpdated(
            msg.sender,
            oldBalance,
            balances[msg.sender]
        );
    }
}