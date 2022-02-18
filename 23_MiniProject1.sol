// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Lottery{
    address payable public Manager;
    address payable[] public Participants;

    constructor(){
        // Manager = msg.sender;
        Manager = payable(msg.sender);
    }

    receive() external payable{
        require(msg.value == 1 ether);
        Participants.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint){
        require(msg.sender == Manager);
        return address(this).balance;
    }

    function random() internal view returns(uint){
        return uint(sha256(abi.encodePacked(block.difficulty, block.timestamp, Participants.length, msg.sender)));
    }

    function selectWinner() public{
        require(msg.sender==Manager);
        require(Participants.length>=3);
        uint rand = random();
        uint index = rand%Participants.length;

        address payable Winner;
        Winner = Participants[index];

        Manager.transfer(getBalance()*10/100);
        Winner.transfer(getBalance());

        Participants = new address payable[](0); 
    }
}