//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract walle_allot{
    
    mapping(address=>uint) allowance;
    address owner;
    constructor() {
        owner=msg.sender;
    }    
    function allowances(uint money,address _this) public {
        require(msg.sender==owner,"YOu are not the owner");
        money = money*1 ether;
        allowance[_this]=money;
    }
    function deposit() public payable {}
}
