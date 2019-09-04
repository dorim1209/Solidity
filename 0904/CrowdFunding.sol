pragma solidity ^0.5.8;
contract CrowdFunding {
    struct Investor {
        address payable addr;
        uint amount;
    }
    mapping(uint=>Investor)public investors;
    uint numOfInvestors;
    
    uint goalAmount=20000000000000000000;
    uint totalAmount;
    address payable owner;
    
    //functions
    constructor () public payable {
        owner=msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }
    
    function fund() public payable {
        //msg.sender, value를 investor(), investors=>totalAmount+=msg.value;
        
        investors[numOfInvestors]=Investor(msg.sender, msg.value);
        numOfInvestors++;
        totalAmount+=msg.value;
    }
    
    function checkGoalFunding() public payable onlyOwner {
        if(totalAmount>=goalAmount){
            owner.transfer(address(this).balance);
        }else{
            for(uint8 i=0;i<numOfInvestors;i++){
                investors[i].addr.transfer(investors[i].amount);
            }
        }
    }
    function getTotalAmount() public view returns(uint){
        return totalAmount;
    }
    
    function killConstract() public onlyOwner {
        selfdestruct(owner);
    }
}