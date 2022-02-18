// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Balance{

    // Here payEther function send ether to contract
    function payEther() public payable{

    }

    // Here getBalance function returns contract's balance
    function getBalance() public view returns(uint){
        return(address(this).balance);
    }


    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    // Here sendEther functions sends Ether to other account
    function sendEther() public{
        user.transfer(1 ether);
    }
}