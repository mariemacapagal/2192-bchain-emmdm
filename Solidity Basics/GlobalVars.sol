// Ed Marie May Macapagal
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function GlobalVars() external view returns (address, uint, uint, address, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;

        address blockCoinbase = block.coinbase;
        uint gasLimit = block.gaslimit;

        return (sender, timestamp, blockNum, blockCoinbase, gasLimit);
    }
}

// Insight
// The global variables have a default value
// The timestamp value increases every time the function is called