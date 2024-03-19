// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract FallbackExample {
    event FallbackReceived (address sender, uint amount);
    
    // Event to log payment received
    event PaymentReceived (address payer, uint256 amount);
    
    // Fallback function
    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
    }

    // Function to receive Ether
    receive() external payable {
        emit PaymentReceived (msg.sender, msg.value);
    }
}

/*
Reflection

A receive function and a fallback function are included in the contract "FallbackExample" to manage incoming Ether payments.
In order to record the recipient's amount and the sender's address, these functions emit events.
This configuration guarantees that the contract can efficiently record and manage incoming transactions, improving its payment processing flexibility and transparency.

*/