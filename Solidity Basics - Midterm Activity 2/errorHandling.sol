// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errorHandling {
    mapping(address => uint256) public valueMapping;

    function setValue(uint256 _value) public {
        //Ensure the value being set is not zero
        require(_value != 0, "Value cannot be zero");
        valueMapping[msg.sender] = _value;
    }

    function getValue() public view returns (uint256) {
        //Ensure the sender has set a value before retrieving
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        return valueMapping[msg.sender];
    }
}

