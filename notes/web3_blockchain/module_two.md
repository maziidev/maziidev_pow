# General Blockchain Knowledge

## Cryptography

they are the foundation of blockchain technology. it is the science of secure comm and its what makes a blockchain so secure and trustworthy without a central authority.

There are two core cryptographic concepts

- hashing
- public-key cryptography

1. Hashing: a hash function is a math algo that takes an input of any size and produce a fixed size unique string of characters.
one of its core properties is its is one way meaning you can easily get the hash from the data but yu cant get the original data back from the hash.
same inputs always produce same hash
hashing in blockchain is use to create a unique fingerprint of each block

2. Public-key cryptography (asymmetric cryptography)
they make uses of a pair of mathematically inked keys:

- public key: derived from the private key, but it cannot be used to figure out yur private key

- private key: secret key own ony by the user or creator of a trnx. it's used to create a digita signature

the role of asymmetric cryptography in blockchain is that
with your private key, it proves that you own your assets on the bockchain

nodes uses your pubick key to verify that the signature is valid.

## Consensus Protocol

consensus protoco is a set of rules and algo that allows all the node in a distributed network to reach a single, unified agreement on the state of the blockchain.
it ensures everynew block added to the chain is valid and that all network participants have the same, accurate copy of the ledger.

it solves the byzantine generals problem

### types of  consesnus protocols

- pow-> proof of work used by bitcoin (miners must solve a mathematica puzzle first miner to do so get a reward). it requires lot of energy and computationa powe

- pos -> proof of stake used by ethereum and many other bockchain...

- poh -> proof of history

## Blockchain interoperability

this is the ability of different blockchain networks to communicate, share data, and exchange value with each other.

it alows the creation of multi-chain applications that can leverage the unique strengths of different blockchains.

it reduces fragmentation

to achieve this we uses:

1. cross-chain bridges
2. inter-blockchain communication (IBC protocol)
3. sidechains and relay chains
4. decentralized oracles ike chainlink

## Mining and Incentive Models

Mining: As we discussed with Proof of Work, mining is the process of using computational power to solve a difficult cryptographic puzzle. The first miner to find the solution gets to create the next block and add it to the blockchain.

Incentive Model: This is the reward system that motivates network participants to perform work (like mining) and act honestly. The two main incentives for miners are:

Block Reward: A set amount of newly created cryptocurrency (e.g., new Bitcoin) given to the miner who successfully adds a new block.

Transaction Fees: A small fee that is included with each transaction and is paid to the miner who includes that transaction in their block.

## Blockchain Forking

A "fork" is a split in the blockchain's history, resulting in two separate chains. This happens when there is a change to the network's protocol.

Soft Fork: This is a backward-compatible update. Old nodes can still recognize and interact with blocks created by new nodes. It's like adding a new, more specific rule that doesn't break the old ones. The chain remains a single entity.

Hard Fork: This is a non-backward-compatible update. It changes the rules so fundamentally that old nodes cannot recognize new blocks as valid. This permanently splits the chain into two separate, independent blockchains. A famous example is the split of Bitcoin into Bitcoin and Bitcoin Cash in 2017, due to a disagreement over block size.

## Cryptocurrencies

A cryptocurrency is a digital or virtual currency that is secured by cryptography. It is the native digital asset of a blockchain network.

Coins: These are the native currency of a blockchain (e.g., Bitcoin on the Bitcoin blockchain, Ether on the Ethereum blockchain). They are used to pay for transaction fees and as a store of value.

Tokens: These are digital assets built on top of an existing blockchain. They can represent anything from digital collectibles (NFTs) to ownership shares in a project. They are often created using a standard protocol (like Ethereum's ERC-20).

## Cryptowallets

A crypto wallet is not a place that "stores" your cryptocurrency. Instead, it is a tool that stores your private keys, which are the secret codes that prove ownership of your cryptocurrency on the blockchain.

Hot Wallets: These are wallets that are connected to the internet. They are very convenient for daily use but are more vulnerable to hacking. Examples include mobile wallets (like MetaMask) and exchange wallets.

Cold Wallets: These are wallets that are not connected to the internet. They are the most secure way to store cryptocurrency for the long term. Examples include hardware wallets (physical devices that look like a USB stick) and paper wallets (a printed-out private key)

## Storage

On-Chain Storage: This is when data is stored directly on the blockchain itself. This is highly secure, transparent, and immutable, but it's also very expensive and inefficient. For this reason, on-chain storage is typically only used for small, critical data, like transaction records and smart contract code.

Off-Chain Storage: This is when large amounts of data (like images, videos, or documents) are stored somewhere else, and a cryptographic "hash" or reference to that data is put on the blockchain. This method is much more efficient and cost-effective. Decentralized storage networks like IPFS (InterPlanetary File System) are often used for this purpose.
