// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {LibDiamond} from "../libraries/LibDiamond.sol";
import {IDiamondLoupe} from "../interfaces/IDiamondLoupe.sol";
import {IDiamondCut} from "../interfaces/IDiamondCut.sol";
import {IERC173} from "../interfaces/IERC173.sol";
import {IERC165} from "../interfaces/IERC165.sol";
import {AppStorage} from "../libraries/AppStorage.sol";

contract DiamondInit {
    AppStorage internal s;

    function init(
        uint256 initializeUint,
        address initializeAddress,
        string calldata version
    )
        external
    {
        s.initialParameter = initializeUint;
        s.initialAddress = initializeAddress;
        s.version = version;

        // adding ERC165 data
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();
        ds.supportedInterfaces[type(IERC165).interfaceId] = true;
        ds.supportedInterfaces[type(IDiamondCut).interfaceId] = true;
        ds.supportedInterfaces[type(IDiamondLoupe).interfaceId] = true;
        ds.supportedInterfaces[type(IERC173).interfaceId] = true;
    }
}