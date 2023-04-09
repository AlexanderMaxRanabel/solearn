// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ownmedaddy {
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    modifier only() {
        require(msg.sender == owner,  "Err");
        _;

    }

    function setOwner(address _newOwo) external only {
        require(_newOwo != address(0), "New Owner cannot be address zero");
        //_; 
        owner = _newOwo;
    }

    /*function registry(uint number) external only returns (uint) {
        uint256 factorial;

    } */

    function factorial(uint n) external only returns (uint) {
    uint result = 1;
    for (uint i = 1; i <= n; i++) {
        result = result * i;
    }
    return result;
}
    function grader(uint customersa, uint overtime, string memory name, string memory value, address payable recipient) external payable only returns (string memory) {
        if (customersa < 5 && overtime < 2) {
            value = " is Not an ideal employee";
            return value;
        } else if (customersa < 5 && overtime > 2) {
            value = " is Average";
            return value;
        } else if (customersa > 5 && overtime > 2) {
            value = " is Ideal";
            recipient.transfer(2 ether);
            return string(abi.encodePacked(name, value));
        }
    }

}
