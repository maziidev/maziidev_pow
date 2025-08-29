// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ICalculator {
    function add(uint256 a, uint256 b) external pure returns (uint256);
    function subtract(uint256 a, uint256 b) external pure returns (uint256);
    function multiply(uint256 a, uint256 b) external pure returns (uint256);
    function divide(uint256 a, uint256 b) external pure returns (uint256);
}

contract BasicCalculator {
    function add(uint256 a, uint256 b) public pure virtual returns(uint256) {
        return a + b;
    }

    function subtract(uint256 a, uint256 b) public pure virtual returns(uint256) {
        return a - b;
    }
}

contract AdvancedCalculator is BasicCalculator, ICalculator {

    // we have add() and subtract() from basciCalculator

    function add(uint256 a, uint256 b) public pure override(BasicCalculator, ICalculator) returns(uint256) {
        return a + b;
    }
    function subtract(uint256 a, uint256 b) public pure override(BasicCalculator, ICalculator) returns(uint256) {
        return a + b;
    }

    function multiply(uint256 a, uint256 b) public pure returns(uint256) {
        return a * b;
    }

    function divide(uint256 a, uint256 b) public pure returns(uint256){
        require(b != 0, "Cannot divide by zero");
        return a/b;
    }
}