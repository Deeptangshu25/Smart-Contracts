// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayInsertion {
    uint8[] public arr = [1, 20, 5, 78, 30];
    function insertElement(uint pos, uint8 element) public {
        require(pos <= arr.length, "Position out of bounds");

       
        arr.push(0);  
        for (uint i = arr.length - 1; i > pos; i--) {
            arr[i] = arr[i - 1];
        }
        arr[pos] = element;  
    }   
    function getArray() public view returns (uint8[] memory) {
        return arr;
    }
}
