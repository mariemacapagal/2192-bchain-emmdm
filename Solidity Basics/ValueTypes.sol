// Ed Marie May Macapagal
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Data Types - Values and References

contract ValueTypes {
    bool public b = true;
    uint public u = 123; //uint = uint256 0 to 2**256 - 1
                         //uint = uint8 0 to 2**8 - 1
                         //uint = uint16 0 to 2**16 - 1
    int public i = -123;
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5;
    //bytes32 public b32 = ;
}