# SOLIDITY 101

solidity is a high level statically typed oop language designed specifically for writting smart contract on the ethereum blockchain and other blockchains that support the evm.

It's syntax is heavily influenced by langs like javascript, C++, and python

every solidity source file has a few required components at the top

-> SPDX license identifier: this is the very first line of solidity file. and it should be commented specifying the license under which your code is released

```solidity
// SPDX-License-Identifier: MIT
```

-> Pragma Directive: this directive is a special keyword that tells the compiler which version of solidity to use when compiling your code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
```

the caret there means compatible with. so ```^0.8.20``` means the code should be compiled with a compiler version ```0.8.20``` or a newer one that doesnt have breaking changes up to version ```0.9.0```

-> Contract declaration: a smart contract is defined using the contract keyword, similar to how a class is defined in oop

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyContract {...}
```

## State and Local Variable

- state variables: they are declared at the contract level, outside of any function. they cost much data as it involves writing data to the blockchain, they are stored in the contract's permanent storage on the blockchain

- local variables: declared inside a function, they are cheaper, they are stored temp in memory (or on the stack) during a function execution. they exist only the duration of the function call, ince the function has finished executing, the local variables are wiped from memory

## Global variables

this are variables we dont declare by our self. they are special variables that are built into the EVM and are available to every smart contract.

-> msg.sender: this is an address type (rep address of the acct that calls the function)
-> msg.value: a uint type (rep amount of ether in wei)
-> block.timestamp: uint type
-> block.number: uint type
-> tx.orign: addr that rep the addres of the original account that created the transation.

## Types in Solidity

-> value types:
    they store their data directly in the variable itself. When you assign them to another variable, a full copy is made.
    bool,uint and int, address, bytes

-> Reference types
    they dont store their data directly but instead holds a reference or pointer to the data's location in memory or storage
    string, array, struct

## Visibility Modifiers

Visibility modifiers are special keywords you use with functions and state variables to control how they can be accessed. They determine whether a function or variable can be called or accessed from outside the contract, from a derived contract, or only from within the contract itself.

Here is a breakdown of the four visibility modifiers:

Public
    Description: The most permissive. A public function or  variable can be accessed from anywhere: inside the contract, from external contracts, or from outside accounts (like from a front-end application or a wallet).
    Example: A function that allows anyone to view their balance.

Important: For state variables, making them public automatically creates a getter function for you.

Private
    Description: The most restrictive. A private function or variable can only be accessed from within the contract it is defined in. It cannot be accessed by external contracts or even by contracts that inherit from it.
    Example: A function that handles a sensitive internal calculation that should never be called from outside.

Internal
    Description: A function or variable can be accessed from within the contract itself and from any contract that inherits from it. It cannot be called by external accounts or contracts.
    Example: A core logic function in a base contract that is intended to be used by child contracts. internal is the default visibility for state variables.

External
    Description: A function can only be called from outside the contract (by another contract or an external account). It cannot be called from within the same contract.
    Example: A function that receives Ether or that is a public API for another contract. Using external is more gas-efficient than public if you know the function will only be called from outside.

## Collections

-> Mapping: is a data strucutre that acts like a key-value store or a hash map in other languages.
we can't loop over a mapping, they dont have length and their values are not initialized to zero.

```solidity
mapping(KeyType => ValueType) public myMapping;
```

-> Struct: is a custom data type that allows you to group several variables of diferent types under a single name.

-> array is a collection of elements of the same data types
we have two types of arrays:

- fixed-size array: the size is set at compile-time and cannot be changed...
- dynamic array: the size can grow or shrink at runtime.

## Modifiers and Error Handling

-> Modifier: this is a reusable piece of code attached to a function. it purpose is to perfom a check be4 the main logic of the function is executed
