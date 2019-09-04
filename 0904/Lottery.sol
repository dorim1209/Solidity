pragma solidity ^0.5.8;
contract Lottery {
	// 응모자를 관리하는 매핑
	mapping (uint => address) public applicants;

	// 응모자 수
	uint public numOfApplicants;

	// 당첨자 정보
	address public winnerAddress;
	
	// 소유자
	address public owner;

	// 타임스탬프
	uint public timestamp;
	
	// 소유자 여부를 확인하는 modifier
	modifier onlyOwner() {
		require(msg.sender == owner);
		_;
	}
	
	// 생성자
	constructor() public {
		numOfApplicants = 0;
		owner = msg.sender;
	}

	// 추첨 응모 처리 함수
	function enter() public {
		
		// 이미 응모한 사람이 아닌지 확인
		for(uint i = 0; i < numOfApplicants; i++) {
			require(applicants[i] != msg.sender);
		}
		
		// 응모 접수 처리
		applicants[numOfApplicants++] = msg.sender;
	}
	
	/// 추첨
	function hold() public onlyOwner  {
		// 응모자가 3명 이상인지 확인
		require(numOfApplicants > 3);
		
		// 타임스탬프 값 설정
		timestamp = block.timestamp;

		// 추첨
		uint winnerInd = timestamp % numOfApplicants;
		winnerAddress = applicants[winnerInd];
	}

}
