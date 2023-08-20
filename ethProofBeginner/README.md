# OMACOIN Token Contract

## Description

The OMACOIN Token Contract is a basic Ethereum smart contract that implements a simplified version of an ERC-20 token. The contract allows for token minting and burning, as well as tracking token balances for Ethereum addresses.

## Getting Started

### Prerequisites

* Ethereum development environment (e.g., Remix, Truffle)
* Solidity compiler (version 0.8.18)

### Installing

1. Clone this repository to your local machine.
2. Open the contract file `MyToken.sol` in an Ethereum development environment (e.g., Remix).

### Executing

1. Compile the contract using the Solidity compiler.
2. Deploy the contract to an Ethereum network of your choice.
3. Interact with the deployed contract using its functions.

### Example Usage

#### Minting Tokens

```solidity
// Assuming the contract is deployed and you have its address
MyToken myToken = MyToken(addressOfDeployedContract);
address recipient = 0xAddress; // Replace with an actual Ethereum address
uint amountToMint = 100; // Replace with the desired amount
myToken.mint(recipient, amountToMint);


**Burning Tokens**
solidity
Copy code
// Assuming the contract is deployed and you have its address
MyToken myToken = MyToken(addressOfDeployedContract);
address owner = msg.sender; // The address that owns the tokens
uint amountToBurn = 50; // Replace with the desired amount
myToken.burn(owner, amountToBurn);



2 / 2

Certainly! Here's a README template for the Solidity contract you provided:

csharp
Copy code
# OMACOIN Token Contract

## Description

The OMACOIN Token Contract is a basic Ethereum smart contract that implements a simplified version of an ERC-20 token. The contract allows for token minting and burning, as well as tracking token balances for Ethereum addresses.

## Getting Started

### Prerequisites

* Ethereum development environment (e.g., Remix, Truffle)
* Solidity compiler (version 0.8.18)

### Installing

1. Clone this repository to your local machine.
2. Open the contract file `MyToken.sol` in an Ethereum development environment (e.g., Remix).

### Executing

1. Compile the contract using the Solidity compiler.
2. Deploy the contract to an Ethereum network of your choice.
3. Interact with the deployed contract using its functions.

### Example Usage

#### Minting Tokens

```solidity
// Assuming the contract is deployed and you have its address
MyToken myToken = MyToken(addressOfDeployedContract);
address recipient = 0xAddress; // Replace with an actual Ethereum address
uint amountToMint = 100; // Replace with the desired amount
myToken.mint(recipient, amountToMint);
Burning Tokens
solidity
Copy code
// Assuming the contract is deployed and you have its address
MyToken myToken = MyToken(addressOfDeployedContract);
address owner = msg.sender; // The address that owns the tokens
uint amountToBurn = 50; // Replace with the desired amount
myToken.burn(owner, amountToBurn);


**Help**
If you encounter any issues or have questions, you can reach out to ogbomaccarthy

**Authors**
ogbomaccarthy
