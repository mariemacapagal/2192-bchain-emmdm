// Ed Marie May Macapagal
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;

        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);
    }
}

// Insight
// If the variable i with the value 123 is comment out, the output would be zero (0) instead of 123
// If the boolean b with the true value is comment out, it becomes false