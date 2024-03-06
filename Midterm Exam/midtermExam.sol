// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradeContract {
// Variables
address public owner;
string public name;
uint256 public prelimGrade;
uint256 public midtermGrade;
uint256 public finalGrade;
enum GradeStatus { Fail, Pass }
GradeStatus public gradeStatus;

// Modifiers
modifier onlyOwner() {
require(msg.sender == owner, "Only contract owner can call this function");
_;
}

modifier validGrade(uint256 _grade) {
require(_grade >= 0 && _grade <= 100, "Invalid grade. Grade must be between 0 and 100");
_;
}

// Events
event GradeComputed(string name, GradeStatus gradeStatus);

// Constructor
constructor() {
owner = msg.sender;
}

// Functions
function setName(string calldata _name) external onlyOwner {
name = _name;
}

function setPrelimGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
prelimGrade = _grade;
}

function setMidtermGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
midtermGrade = _grade;
}

function setFinalGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
finalGrade = _grade;
}

function calculateGrade() external onlyOwner {
uint256 averageGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
if (averageGrade >= 50) {
gradeStatus = GradeStatus.Pass;
} else {
gradeStatus = GradeStatus.Fail;
}
emit GradeComputed(name, gradeStatus);
}
}