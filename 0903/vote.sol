pragma solidity ^0.5.8;

contract StructContract {
    
    // key => value
    // mapping (key type => data type) name;
    // mapping (address => uint) balance;
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    uint public peopleCount;
    
    mapping(address => Person) public people;
    
    // address1 => {0, "gildong", "kim"}
    // address2 => {1, "gildong", "hong"}
    // address3 => {2, "aaaaa", "lee"}
    
    // people[address2];  {1, "gildong", "hong"}
    
    mapping (address => uint) public voteResult;
    
    // address1 => 10;
    // address2 => 20;
    
    function addPerson(address _address, string memory _firstName, string memory _lastName) public {
        peopleCount ++;
        //people.push(Person(_firstName, _lastName));
        people[_address] = Person(peopleCount, _firstName, _lastName);
    }
    
    function vote(address _address) public {
        voteResult[_address] ++;
    }
}
