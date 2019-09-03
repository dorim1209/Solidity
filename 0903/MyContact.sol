pragma solidity ^0.5.8;

contract MyContact {
    string value;
    
    constructor(string memory _value) public {
        value = _value;
    }
    
    // get
    function getValue() public view returns (string memory){
        return value;
    }
    
    // set
    function setValue(string memory _value) public {
        value = _value;
    }
}