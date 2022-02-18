// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Enum{
    enum user{allowed, not_allowed, wait}

    user public u1 = user.allowed;
    uint public lottery = 1000;
}
