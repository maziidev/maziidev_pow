// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Collections {


    // structs to define our custom datatype for a user

    struct User {
        uint256 id;
        string name;
        uint256 lastLogin;
        string[] favoriteMovies; //array inside a struct
    }

    mapping(address => User) private users;

    mapping(address => bool) private isRegsitered;

    address[] private userAddresses;

    // function to reg new user
    function registerUser(uint256 _id, string memory _name) public {
        if(!isRegsitered[msg.sender]) {
            users[msg.sender] = User(_id, _name, block.timestamp, new string[](0));
            isRegsitered[msg.sender] = true;
            userAddresses.push(msg.sender);
        }
    }

    // function to get a user's name
    function getUserName() public view returns(string memory){
        return users[msg.sender].name;
    }

    // function to add a movie to a user's favorite list
    function addFavoriteMovie(string memory _movie) public {
        users[msg.sender].favoriteMovies.push(_movie);
    }
}