// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Mapping{
    mapping(uint=>string) public roll_number;

    function setter(uint keys, string memory name) public{
        roll_number[keys] = name;
    }
}