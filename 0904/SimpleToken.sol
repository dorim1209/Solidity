pragma solidity ^0.5.8;

contract SimpleToken {
    address owner;

    string sybol = "STK";
    
    mapping(address => uint) public balanceOf;
    
    constructor() public {
        balanceOf[msg.sender] = 10000000000000000000000000000;
        owner = msg.sender;
    }
    
    function transfer(address _to, uint _value) public {
        address _from = msg.sender; 
        require(balanceOf[_from] >= _value);
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
    }
    
    function buyTocken() public payable {
        uint stk;
        stk = msg.value * 3;
        require(balanceOf[owner] >= stk);
        balanceOf[msg.sender] += stk;
        balanceOf[owner] -= stk;
    }
    
    function sellTocken(uint _value) public payable {
        uint eth;
        eth = _value / 3;
        require(balanceOf[msg.sender] >= eth);
        balanceOf[msg.sender] -= _value;
        balanceOf[owner] += _value;
        
        msg.sender.transfer(eth);
    }
    
    function ownerTocken() public view returns(uint) {
        return balanceOf[owner];
    }

    function getOwnerBalance() public view returns(uint) {
        return address(this).balance;
    }
}