// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

//sending ETH
contract SendEther {
    constructor() payable {}

    receive() external payable { }

    function sendViaTransfer (address payable _to) external payable {
    _to. transfer (100);
    }

    function sendViaSend (address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall (address payable _to) external payable {
        (bool success, ) = _to.call{value: 100}("");
        require(success, "Call failed.");
    }
}

contract SelfDestruct {
    event Deposit (uint amount);
    event Withdraw(uint amount);
    address public owner = msg.sender;

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner!");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}

/*
Reflection

There are two contracts in the Solidity code. The "SendEther" contract makes it possible to send and receive Ether via a variety of techniques.
It has features that demonstrate several methods of transferring Ether, such as sendViaTransfer, sendViaSend, and sendViaCall.
However, the "SelfDestruct" contract has a self-destruct mechanism that the contract owner can activate.
Through this technique, the contract is terminated and the balance is transferred to the owner's address.

*/