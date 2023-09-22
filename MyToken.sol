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
