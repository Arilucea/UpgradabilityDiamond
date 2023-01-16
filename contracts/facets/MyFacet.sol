// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {Modifiers} from  "../libraries/AppStorage.sol";

contract MyFacet is Modifiers {

    function updateVersionValue(string memory _version) external onlyOwner {
        s.version = _version;
    }

    function getVersion() external view returns(string memory) {
        return(s.version);
    }

}