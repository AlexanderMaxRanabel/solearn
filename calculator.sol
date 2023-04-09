// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Functions {
    
    
    function add(int number1, int number2) external pure returns (int) {
        return number1 + number2;
    }
    function subtract(int number1, int number2) external pure returns (int) {
        return number1 - number2;
    }
    function multiplies(int number1, int number2) external pure returns (int) {
        return number1 * number2;
    }
    function divides(int number1, int number2) external pure returns (int) {
        if (number1 == 0 || number2 == 0) {
            return -1;
        } else {
            return number1 / number2;
        }
    }
    
}
