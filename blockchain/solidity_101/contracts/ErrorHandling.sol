// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ErrorHandling {
    uint256 public balance = 100;

    // we use require to validate user input.
    function withdraw(uint256 amount) public {
        require(amount <= balance, "insufficient balance");
        balance -= amount;
    }

    // revert with conditional statement
    function withdrawWithRevert(uint256 amount) public {
        if(amount > balance) {
            revert("Insufficient balance. Reverting transaction");
        }
        balance -= amount;
    }

    // assert is for internal logic check...
    function internalCheck(uint256 a, uint256 b) public pure returns(uint256) {
        uint256 c = a + b;
        assert(c >= a); //check for integer overflow
        return c;
    }
}