    // bank balance;
    // account balances;
    
    // deposit()

    // withdraw()

    // getBalance()

    // getBankBalance()
pragma solidity ^0.5.8;

contract Bank {
    address payable wallet;
    mapping(address => uint256) public balances;

    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }


    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }
}
