// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Functions{
    uint age = 10;

    function getter() public view returns(uint){
        return age;
    }

    function setter1(uint _x) public{
        age = _x;
    }

    function setter2() public{
        age+=1;
    }
}