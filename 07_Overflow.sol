// SPDX-License-Identifier: MIT

// pragma solidity 0.5.0;
pragma solidity 0.8.0;

contract Overflow{
    uint8 public money = 255;

    function setter() public{
        money+=1;
    }
}