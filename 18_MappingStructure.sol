// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

struct Student{
    string name;
    uint roll_number;
}

contract MappingStruct{
    mapping(uint=>Student) public reg_no;

    function setter(uint _reg_no, string memory _name, uint _roll_number) public{
        reg_no[_reg_no] = Student(_name, _roll_number);
    }
}