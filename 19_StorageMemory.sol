// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract StorageMemory{
    string[] public arr=["Yathin","Prakash","Kethepalli"];

    function mem() public view{
        string[] memory memArr = arr;
        memArr[0] = "Srija";
        memArr[1] = "";
    }

    function sto() public{
        string[] storage memArr = arr;
        memArr[0] = "Srija";
        memArr[1] = "";
    }

}