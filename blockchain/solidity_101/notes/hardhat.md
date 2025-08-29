# Hardhat ONE ZERO ONE

when we create a hardhat project, serveral files and folders are automatically generated

1. contracts/ -> this is the most important folder. it is where we write our smart contracts
2. ignition/ ->directory for our deployment scritps which are called modules in hardhat ignition
3. test/ folder where we write our automated tests for the smart contracts. hardhat is focused highly on testing and it uses mocha framework with chai assertions.
4. hardhat.config.ts -> the main configuration file for our entire project. in it we see things like
-- solidity compiler version
-- which hardhat plugins to use
-- the network we are connected to
5. node_modules/ this folder contains all the external libraries and packages our project depends on
