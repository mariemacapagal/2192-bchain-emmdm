// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

     modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid Address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

}

contract MyContract is Ownable{
    uint256 public someValue;
    mapping(address => uint256) public valueMapping;

    function setSomeValue(uint256 newValue) public onlyOwner {
        valueMapping[msg.sender] = newValue;
    }
}

