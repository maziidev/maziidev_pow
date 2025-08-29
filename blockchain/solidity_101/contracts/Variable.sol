//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Variables {

    // state variable
    uint256 public myNumber; //uint256 type

    function setAndGetNumber(uint256 _inputNumber) public {
        // local variable

        uint256 calculation = _inputNumber * 2;

        // setting the state variable value here - cost gas.
        myNumber = calculation;
    }

    // only reads a state variable - low-cost operation
    function getMyNumber() public view returns(uint256){
        return myNumber;
    }


    // value types

    bool public isOwner;
    uint256 public balance;

    int256 public temperature;

    address public contractOwner;

    address payable public fundReceiver; //address that receives ether

    bytes4 public functionSelector;


    // reference types

    // struct
    struct User {
        uint256 userId;
        string username;
        address userAddress;
    }

    // arrays
    // array of user struct we defined
    User[] public users;

    // string to hold text data
    string public myString;

    // dynamic byte array
    bytes public myBytes;

    // function to demonstrate all usage

    constructor() {
        isOwner= true;
        balance =10000;
        temperature = -5;

        contractOwner = msg.sender; //global variable

        string memory initalString = "Hello, Solidity";
        myString = initalString;

        // create and add a new user to our dynamic array
        users.push(
            User(1, "Alice", msg.sender)
        );
    }

    function setMyString(string memory _newString) public {
        myString = _newString;
    }
}