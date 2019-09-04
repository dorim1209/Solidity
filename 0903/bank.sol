pragma solidity ^0.5.8;

contract Bank {
    uint public totalDeposit;
    mapping(address => uint) balanceOf;

    constructor() public {

    }

    function deposit() public payable{
        balanceOf[msg.sender] += msg.value;
        totalDeposit += msg.value;
    }

    function withdraw(uint _amount) public payable {
        require(balanceOf[msg.sender] >= _amount);
        balanceOf[msg.sender] -= _amount;
        totalDeposit -= _amount;
        msg.sender.transfer(_amount);
    }

    function getBalanceOf(address _account) public view returns (uint){
        return balanceOf[_account];
    }
}
