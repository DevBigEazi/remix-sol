// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    //type          //visibilty     // variable name
    SimpleStorage[] public simpleStorageArray; // this will create a view of our simpleStorage contract

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // trying to interact with store function from simpleStorage contract
    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNum
    ) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNum);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}

// In other to interact with any contract, you always going to need 2 things; Address and ABI --Application Binary Interface
// ABI will tell our code exactly how to interact with the contract
