// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract DynamicBytesArray{
    bytes public b1;

    function pushElement() public{
        b1.push('d');
    }

    function getElement(uint _x) public view returns(bytes1){
        return b1[_x];
    }

    function popElement() public{
        b1.pop();
    }
}