// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './IPriceFeed.sol';
import 'hardhat/console.sol';

contract MockPriceFeed is IPriceFeed {

    mapping(bytes32 => uint256) prices;


    function setPrice(bytes32 symbol, uint256 value) external {
        prices[symbol] = value;
    }



    function getPrice(bytes32 symbol) external override returns(uint256) {
        require(prices[symbol] > 0, "No pricing data for given symbol");
        return prices[symbol];
    }

}
