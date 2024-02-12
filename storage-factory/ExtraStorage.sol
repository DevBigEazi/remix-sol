// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Inheritance using the is keyword
contract ExtraStorage is SimpleStorage {
    // Add %5 the favNum stored
    // override the prvious store function
    // virtual override

    function store(uint256 _favNum) public override {
        favNum = _favNum + 5;
    }
}
