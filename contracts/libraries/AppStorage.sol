// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {LibDiamond} from "./LibDiamond.sol";

struct ExampleStruct {
    address owner;
    uint96 amount;
    address sender;
    uint88 elementsLeft;
    bool allowed;
}

struct AppStorage {
    uint256 initialParameter;
    address initialAddress;
    string version;
    mapping(uint256 => ExampleStruct) myStruct;
    mapping(address => bool) contractOpen;
}

contract Modifiers {
    AppStorage internal s;

    modifier onlyOwner() {
        LibDiamond.enforceIsContractOwner();
        _;
    }
}
