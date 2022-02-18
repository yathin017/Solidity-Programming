// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Global{

    function getter() public view returns(uint _block_no, uint _time_stamp, address _msgSender){
        return(block.number, block.timestamp, msg.sender);
    }
}