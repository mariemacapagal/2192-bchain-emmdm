// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functionModifier {
    mapping(address => uint256) public valueMapping;

    modifier nonZeroValue(uint256 _value) {
        require(_value != 0, "Value cannot be zero");
        _;
    }

    modifier valueHasBeenSent() {
        require(valueMapping[msg.sender] != 0, "No value set for address");
        _;
    }

    function setValue(uint256 _value) public nonZeroValue(_value) {
        valueMapping[msg.sender] = _value;
    }

    function getValue() public view valueHasBeenSent returns (uint256) {
        return valueMapping[msg.sender];
    }
}

