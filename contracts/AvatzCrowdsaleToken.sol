pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract AvatzCrowdsaleToken is MintableToken {

  string public constant name = "JS IME";
  string public constant symbol = "JSI";
  uint8 public constant decimals = 18;

}