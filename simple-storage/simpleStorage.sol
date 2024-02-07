// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// EVM - Ethereum Virtual Machine

contract SimpleStorage {
    // This get initialized to zero!
    // variable
    // in a case where we have list of variable in our contract, all of them are indexed automatically.
    uint256 favNum;

    mapping(string => uint256) public nameToFavNum;

    //struct
    struct People {
        string name;
        uint256 favNum;
        // each variable get automatically indexed here
    }

    // a public variable with a getter function(person)
    // People public person = People({favNum: 8, name: "Isiaq"});

    People[] public people; // Dynamic array: takes unlimited number of elements

    // People[4] public people; // Fixed-sized array: takes maximum number indicated.

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
        // People memory newPerson = People({favNum: _favNum, name: _name});
        // People memory newPerson = People(_favNum, _name);
        // people.push(newPerson);
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138 // every single smart contract have addresses just like our wallets/
// Anytime we make changes or modify a value in blockchain, including making a new transaction, it happens in transaction.
// You cant get rid of deploy contract on the blockchain cos it is immutable
// Visibility in smart contract can be private, public, internal or extrernal.
// When we dont give the visibilty to functions or variables the default visibility is internal.
// Prefixing the parameter with underscore _ is useful for naming convention
// Each blockchain has a different way of calculating their gas but the more stuff you do in your function, the more gas it costs
// Global scope/local scope
// view and pure function when called alone dont spend gas. Remember we only spend gas if we modify state.
// calling view functon is free unless you call it inside a function that cost gas.

// Basic Arrays and Structs
// Dynamic array vs fixed-sized array.

// EVM can access and store info/data in 6 places/locations:stack, memory, storage, calldata, code, logs.
// calldata and memory (variables) means that the variable is only gonna exist temporarily during the transaction(when the function is being called)
// storage exist even outside of just a function executed. It's a prominent variable that can be modify.
// calldata cant be modified why memory can be modify.
// However, we cant say a variable is stack, code or logs.

// Basic Solidity Mapping
// A mapping is a data structure where a key is mapped to a single value.
