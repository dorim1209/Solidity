pragma solidity ^0.5.8;

contract MyContact {
    
    enum Grade { Broze, Silver, Gold }
    
    Grade public Kim = Grade.Broze;  // 0
    Grade public Lee = Grade.Silver;  // 1
    Grade public Park = Grade.Gold;  // 2 
    
    function setGradeKim(uint8 newGrade) public{
        Kim = Grade(newGrade);
    }
}