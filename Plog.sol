pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Plog is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Plog(address _owner)  UpgradeableToken(_owner) {
    name = "Plog";
    symbol = "plog";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}