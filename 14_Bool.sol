// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Bool{
    bool public value;

    function check(int x) public returns(bool){
        if(x>100){
            value = true;
            return value;
        }
        else{
            value = false;
            return value;
        }
    }
}