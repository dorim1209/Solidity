pragma solidity ^0.5.8;

contract MyContact {
    
    enum State { Waiting, Ready, Active }
    
    State public state;
    
    constructor() public {
        state = State.Waiting; // 0
    }
    
    function activate() public {
        state = State.Active; // 2
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
    
}