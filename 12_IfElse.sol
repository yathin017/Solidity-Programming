// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract IfElse{

    function check(int x) public pure returns(string memory){
        string memory value;

        if(x>0){
            value = "Greater than 0";
        }
        else if(x<0){
            value = "Lesser than 0";
        }
        else{
            value = "Is equal to 0";
        }
        return value;
    }
}