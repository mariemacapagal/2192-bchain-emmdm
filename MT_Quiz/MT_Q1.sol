// SPDX-License-Identifier: MIT
pragma solidity >=0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function.");
        _;
    }

    modifier validRate(uint256 _value) {
        require(_value > 0, "Hourly rate must be larger than zero.");
        _;
    }

     modifier validHours(uint256 _value) {
        require(_value > 0, "Hours worked must be greater than zero.");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint256 _value) public {
        age = _value;
    }

    function setHrsWrk(uint256 _value) public validHours(_value) {
        hoursWorked = _value;
    }

    function setRate(uint256 _value) public onlyOwner validRate(_value) {
        hourlyRate = _value;
    }

    function calculateTotSal() public  onlyOwner {
        require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate or hours worked is zero.");
        totalSalary = hourlyRate * hoursWorked;
    }

}