# Metacrafters

# ACTIVITY ETH PROOF

## Description

This is a simple Ethereum token contract written in Solidity. The contract allows for the creation and destruction of tokens, with balances being tracked on-chain.



## EXECUTING THE PROGRAM
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

## Getting Started

To interact with this contract, you will need an Ethereum wallet and some Ether to pay for transaction fees. You can then deploy the contract to the Ethereum network using a service like [Remix](https://remix.ethereum.org/).





// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store token details
    string public name = "Meta Mind";
    string public symbol = "MTAM";
    uint256 public totalSupply = 0;

    // Mapping of addresses to token balances
    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    // Mint function to create new tokens and increase total supply
    function mint(address _address, uint256 _value) public {
        require(_value > 0, "Value must be greater than 0");
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to destroy tokens and decrease total supply
    function burn(address _address, uint256 _value) public {
        require(_value > 0, "Value must be greater than 0");
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Filename.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the function.

## Authors

- Femeru
