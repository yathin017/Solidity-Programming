// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Loops{
    uint[3] public arr;
    uint public count;

    // while loop
    function whileLoop() public{
        while(count<arr.length){
            arr[count] = count;
            count++;
        }
    }

    // for loop
    function forLoop() public{
        for(uint i=count; i<arr.length; i++){
            arr[count] = count;
            count++;
        }
    }

    // do-while loop
    function doWhile() public{
        do{
            arr[count] = count;
            count++;
        }while(count<arr.length);
    }
    
}