//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/08d109d87725e36dce92db28c7a74bb49bde38ae/contracts/access/Ownable.sol";

contract walle_allot{
    
    mapping(address=>uint) allowance;
       
    function allowances(address _who,uint _amount) public {
        require(_checkOwner(),"you are not the owner");
        _amount = _amount*1 ether;
        allowance[_this]=_amount;
    }
    receive() external payable{}

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
