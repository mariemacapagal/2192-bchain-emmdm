// Ed Marie May Macapagal
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Data Types - Values and References

contract FunctionIntro {
    function add(uint x, uint y) external pure returns (uint) {
        return (x + y);
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return (x - y);
    }

    function multiply(uint x, uint y) external pure returns (uint) {
        return (x * y);
    }

    function div(uint x, uint y) external pure returns (uint) {
        return (x / y);
    }
}