// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract PureView{
    uint public age = 10;

    function getter() public view returns(uint){
        return age;
    }

    function getRoll() public pure returns(uint){
        uint roll = 100;
        return roll;
    }
}