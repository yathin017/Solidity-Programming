// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

// Stored in stack
// Dont cost gas
// memory keyword can't be used at contract level
contract local{

    function store() pure public returns(uint){
        uint age = 10;
        string memory name = "Yathin";
        return age;
    }

}