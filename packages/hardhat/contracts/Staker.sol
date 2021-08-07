pragma solidity >=0.6.0 <0.7.0;

import "hardhat/console.sol";
import "./ExampleExternalContract.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract Staker {

  //create address, balance is publicly viewable
  mapping ( address => uint256 ) public balances;
  //threshold variable for staking to be (complete)
  uint256 public constant threshold = 1 ether;

  ExampleExternalContract public exampleExternalContract;

  constructor(address exampleExternalContractAddress) public {
    exampleExternalContract = ExampleExternalContract(exampleExternalContractAddress);
  }

  // Collect funds in a payable `stake()` function and track individual `balances` with a mapping:
  //  ( make sure to add a `Stake(address,uint256)` event and emit it for the frontend <List/> display )

  function stake(uint256 _id, address balances) internal {
    emit.event.Stake(address balances, uint256)
  }

  // After some `deadline` allow anyone to call an `execute()` function
  //  It should either call `exampleExternalContract.complete{value: address(this).balance}()` to send all the value
  function execute(uint256 _id, address balances) {

  }


  // if the `threshold` was not met, allow everyone to call a `withdraw()` function
  function withdraw(uint256 _id, address balances) external {

  }


  // Add a `timeLeft()` view function that returns the time left before the deadline for the frontend


}
