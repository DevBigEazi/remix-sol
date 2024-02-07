// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // in a case where we have list of variable in our contract, all of them are indexed automatically.
    uint256 favNum;

    mapping(string => uint256) public nameToFavNum;

    //struct
    struct People {
        string name;
        uint256 favNum;
        // each variable get automatically indexed here
    }

    People[] public people; // Dynamic array: takes unlimited number of elements

    //function
    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return favNum;
    }

    // calldata. memory, storage
    function addPerson(string memory _name, uint256 _favNum) public {
        people.push(People(_name, _favNum));
        nameToFavNum[_name] = _favNum;
    }
}