
# Errors Smart Contract

## Overview

The Errors Smart Contract is a simple Ethereum smart contract designed to manage student information, including the student's Ethereum address, score, and name. This contract includes basic validation checks to ensure the integrity of the stored data.

## Getting Started

### Prerequisites

Before interacting with this contract, you need an Ethereum wallet or development environment like Remix or Truffle set up. You should also have some Ether (ETH) for transaction fees on the Ethereum network.

### Deployment

To deploy the Errors Smart Contract:

1. Compile the contract using a Solidity compiler.
2. Deploy it to an Ethereum network of your choice (e.g., Rinkeby, Ropsten, or the mainnet).

### Usage

Once the contract is deployed, you can interact with it using the following functions:

- `setscore(uint _score) public`: Set the student's score, ensuring it is between 0 and 100.

- `newname(string memory _name) public`: Update the student's name. It checks if the current name is not empty before updating.

- `newstudent(address _student) public`: Set the student's Ethereum address, ensuring it is not the zero address (`0x0000000000000000000000000000000000000000`).

## Contract Details

### State Variables

- `address public student`: Stores the Ethereum address of the student.
- `uint public score`: Stores the student's score, which should be between 0 and 100.
- `string public name`: Stores the student's name.

### Functions

- `setscore(uint _score) public`: Sets the student's score, with a validation check to ensure it's within the valid range.

- `newname(string memory _name) public`: Updates the student's name, with a check to ensure the current name is not empty.

- `newstudent(address _student) public`: Sets the student's Ethereum address, with a check to prevent setting it to the zero address.

### Troubleshooting
If you encounter any issues or have questions, please consult me or refer to the contract's source code for more details.

### Contributing
Contributions to this contract are welcome! Please follow the standard GitHub pull request process to contribute.

### License
This project is licensed under the MIT License. 

### Author
Ogbomac
