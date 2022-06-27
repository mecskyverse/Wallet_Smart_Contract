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

    function withdrawal(address payable _to,uint _amount) public{
            _amount=_amount*1 ether;
        if(msg.sender==owner){
            require(_amount<=address(this).balance,"Not enough funds");
            
            _to.transfer(_amount);

        }
        else {
            require(allowance[msg.sender]>=_amount,"Amount is more than your allowance");
            
            allowance[msg.sender]-=_amount;
            _to.transfer(_amount);

        }
    }
    function allowancebalance() public view returns(uint)
    {
        return allowance[msg.sender];

    }  
    function balance() public view returns(uint){
        return address(this).balance;
    } 
}
