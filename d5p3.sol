// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayManipulation {
    uint[] public numbers;
    function addNumber(uint num) public {
        numbers.push(num);
    }
    function deleteElement(uint index) public {
        require(index < numbers.length, "Index out of bounds");
        for (uint i = index; i < numbers.length - 1; i++) {
            numbers[i] = numbers[i + 1];
        }
        numbers.pop();
    }
    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }
}
