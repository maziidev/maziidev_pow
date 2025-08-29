# TYPES OF BLOCKCHAINS

1. Layer one
    - evm based (buit on the ethereum virtual machine)
    - tvm (telegram virtal machine) (TON is an example - the open network)
    - Solana
    - sui etc
2. Layer two
 they are seperate blockchain built on top of a layer 1 bockchain to help is scale.

types of l2

- optimistic rollups
- zero knowledge rollups

## The Ethereum Blockchain

Ethereum is not just a ledger for value transfer, it is a programmable platform where developers can build and deploy all sorts of decentralized applications.

### Components of Ethereum

- Ether -> native cryptocurrency of the ethereum network. it is use to store value and also it is the fuel of the ethereum network. Every operation on the blockchain rquire a fee paid in Eth and it is called Gas

- Smart Contract -> These are self executing computer programs stored on the ethereum bockchain.

- Gas and the ethereum Virtua machine -> the EVM is a virtual computer that processes all transactions and smart contract executions on the ethereum network

Gas is a fee paid in gwei to help in transaction processing

- consensus protocol -> ethereum started with the pow consensus protocol used by bitcoin but by sept 2022, they underwent a massive upgrade called the merge, which transitioned the netwwork to pos (proof of stake)

- scaling -> with the merge, ethereum still didnt solve the scalability problem it stil has a ow transation throughput on the mainnet
To scale ethereum we make use of a combination of technologies called
-- Rollups (L2s)
-- Proto-danksharding

## The Ethereum Smart Contracts

smart contracts is a sef executing computer program stored directy on the ethereum blockchian. It is a key piece of the world computer concept

the smart contract allows for decentralized automated agreements

- Rules of a smart contract are written in code
- They execute automatically without the need of a third party

### Characteristics

1. Immutabiity -> once written and deployed to the blockchain, its code cannot be changed
2. Trustless -> trust from third party to execute the contract is not needed
3. Transparent -> anyone can view the code of a smart contract.

Ethereum smart contracts are built using a programming language called solidity. It is a high level human readable language that compiles down to code the evm can understand.
other languae like vyper can also be used for smart contract development

### Use cases and application

-> DeFi (decentralized finance)
-> Tokens (ERC-20 fungibe tokens and ERC-721 non fungible tokens)
-> DAO (decentralized autonomous organizations)

## Ethereum tokens

An Ethereum token is a digital asset that is created, managed and lives on the ethereum blockchain.
Tokens are created and governed by smart contracts they can represent any thing from currency to a piece of digital art.

Beahaviour of this tokes are defined by special standards called ERCs (Ethereum Request for comments).

-> ERC-20: The standard for fungible token
fungible means each unit of the token is identical and can be interchanged with any other unit.
use case of ERC-20 tokens: USDT, USDC, UNI, AAve, WBTC

-> ERC-721: The standard for non fungible tokens
non-fungible means that each token is unique and cannot be exchanged on a one-to-one basis with another. they have their own unique properties and IDs

use case: digital art and collectibles, gaming assets, proof of ownership
