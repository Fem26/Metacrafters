// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    function deposit(uint256 amount) public {
        balance += amount;
    }

    function withdraw(uint256 amount) public onlyOwner {
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
        payable(owner).transfer(amount);
    }

    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // Use assert to check for conditions that should never be false
        assert(a >= b);
        return a - b;
    }

    function revertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // Use revert to handle conditions that are expected to be false and revert the transaction
        if (a < b) {
            revert("a must be greater than or equal to b");
        }
        return a - b;
    }
}