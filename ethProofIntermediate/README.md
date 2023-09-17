# Student Data Management Smart Contract

## Description

This Solidity smart contract allows for the management of student data on the Ethereum blockchain.

It provides functionalities to store and update a student's Ethereum address, score, and name. 

Additionally, it includes error handling mechanisms to ensure data integrity.

## Getting Started

## Installing

To use this smart contract, you need access to an Ethereum development environment.

You can deploy and interact with the contract using tools like Remix or Truffle.

Clone the repository to your local machine:

git clone https://github.com/yourusername/student-data-contract.git

## Contract Deployment
Deploy the contract using your preferred Ethereum development environment.
Interact with the deployed contract by calling its functions.

## Executing Transactions
To interact with the contract, you can use tools like Remix, Truffle, or web3.js. Here are some examples of how to use the contract's functions:

Set a student's score:

function setscore(uint _score) public {
    // Call this function with the desired score
}
Update a student's name:

function newname(string memory _name) public {
    // Call this function with the desired name
}
Update a student's Ethereum address:

function newstudent(address _student) public {
    // Call this function with the desired Ethereum address
}
## Help
## Error Handling
If you attempt to set a score greater than 100, the transaction will be reverted with the message "the student's score should be lesser than or equal to 100."

When updating a student's name, the contract checks if the provided name has a length of at least 5 characters. If not, it reverts the transaction with the message "the student's name is too short."

The newstudent function uses the assert statement to ensure that the provided Ethereum address is not the zero address (0x0000000000000000000000000000000000000000).

## Authors
ogbo mac

## License

This project is licensed under the MIT License
