pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract Tokensale is MintedCrowdsale, TimedCrowdsale {
    constructor(
        uint256 _start,
        uint256 _end,
        uint256 _rate,
        address _wallet,
        MintableToken _token
    )
        public
        Crowdsale(_rate, _wallet, _token)
        TimedCrowdsale(_start, _end)
    {
    }
}