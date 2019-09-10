# Solidity 실습내용

---

- 19.09.02
  - **처음 배우는 블록체인** *p.185*
    - HelloWorld.sol 0.4.11 version
    - 0.5.8 version
    - *p.198* 실습

- 19.09.03
  - **처음 배우는 블록체인** 
    - MyContact.sol
    - StuctContract.sol
    - contact.sol
    - vote.sol
  - **Crypto Zombie 실습** *(https://cryptozombies.io/)*
    - zombiefactory.sol
    - zombiepeeding.sol

- 19.09.04
  - **처음 배우는 블록체인** 
    - bank.sol 수정
    - CrowdFunding.sol

- 19.09.05
  - **처음 배우는 블록체인** 
    - CrowdFundingv2.sol *upgrade version*

- 19.09.06

  - **처음 배우는 블록체인** *Chapter  p.237*
  - truffle 설치
      1. mkdir truffletest
      2. cd truffletest
      3. npm install -g truffle
      4. truffle init
      

    - truffle develop
    
      1. compile --all
      2. migrate --reset
      3. let metaCoin = await MetaCoin.deployed()
      4. accounts
      5. let bal = await metaCoin.getBalance(accounts[0])
      6. bal
      7. bal.toNumber()
      8. let balEth = await metaCoin.getBalanceInEth(accounts[0])
      9. balEth.toNumber()
      

- 19.09.09

  - **처음 배우는 블록체인** *Chapter  p.257*

- 19.09.10
  - **처음 배우는 블록체인**
    - pet-shop
      - truffle unbox pet-shop    