pragma solidity ^0.5.8;

contract Vote {
    uint8 numOfCandidate =0;
    mapping(string => uint) score; // 후보자 리스트
    mapping(uint => string) candidateList; // 각 후보자별 득표수

    constructor () public {

    }

    function addCandidate (string memory candidate) public {
        candidateList[numOfCandidate] = candidate;
        numOfCandidate ++;
    }

    function vote (string memory candidate) public {
        score[candidate] ++;
    }

    function getNumOfCandidate() public view returns (uint8) {
        return numOfCandidate;

    }

    function getCandidate(uint8 index) public view returns (string memory) {
        return candidateList[index];

    }

    function getScore(string memory candidate) public view returns (uint) {
        return score[candidate];
    }
}