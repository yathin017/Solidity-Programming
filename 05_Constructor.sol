// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Constructor{

    uint public count;

    // constructor(){
    //     count = 0;
    // }

    constructor(uint _x){
        count = _x;
    }
}