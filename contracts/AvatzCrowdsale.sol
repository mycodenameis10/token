pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract AvatzCrowdsale is MintedCrowdsale, Ownable {

  constructor(
    uint256 _rate,
    uint256 _cap,
    address _wallet,
    MintableToken _token,
    uint256 _goal
  )
    public
    Crowdsale(_rate, _wallet, _token)
  {
    require(_goal <= _cap);
  }
  
  function setRate(uint256 _rate) external onlyOwner {
        require(_rate != 0x0);
        rate = _rate;
        RateChange(_rate);
  }
  
  event RateChange(uint256 rate);
}
