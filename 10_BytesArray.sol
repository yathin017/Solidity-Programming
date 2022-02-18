// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

// Byte arrays cannot be modified
contract BytesArray{
    bytes2 public b2;
    bytes3 public b3;

    function setter() public{
        b3 = "abc";
        b2 = "a";
    }

}