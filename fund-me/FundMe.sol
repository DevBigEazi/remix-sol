// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    uint256 public minimumUsd = 50;

    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract
        require(msg.value > minimumUsd, "Didn't send enough"); // 1e18 == 1* 10 ** 18 == 1000000000000000000

        // what is reverting? undo any action before, and send remaining gas back
    }

    //     function withdraw() internal {}
}

// Just like wallet hold funds, smart contratc can also hold funds
// Money math is done in terms of wei, so ETH needs to be set as 1e18 value

// Chainlink and Oracle: They come into play when we need to convert ETH to USD.
