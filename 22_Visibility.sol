// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Visibility{

    function f1() public pure returns(uint){
        return 1;
    }
    function f2() private pure returns(uint){
        return 2;
    }
    function f3() internal pure returns(uint){
        // uint x1 = f4();   // not possible
        return 3;
    }
    function f4() external pure returns(uint){
        return 4;
    }
}

contract B is Visibility{
    uint x2 = f1();
    // uint x3 = f2();      // not possible
    // uint x4 = f3();      // not possible
    // uint x5 = f4();      // not possible
}

contract C{
    Visibility obj = new Visibility();
    uint public x6 = obj.f4();
    uint public x7 = obj.f4();
}