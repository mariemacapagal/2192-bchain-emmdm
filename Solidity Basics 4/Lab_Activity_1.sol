// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(address(this).balance >= _amount, "Insufficient balance");
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

/*
Reflection

The "EtherWallet" contract that allows users to deposit and withdraw Ether is defined by the Solidity code that is provided.
The contract deployer's initial address is the owner of the contract. The receive function allows users to deposit Ether into the contract.
Security is ensured by limiting withdrawals to the contract owner. The contract also has a feature that allows you to view its current balance.
All things considered, this contract emphasizes important security and functionality guidelines for Ethereum smart contract construction, allowing for basic Ether administration while retaining ownership control.

*/