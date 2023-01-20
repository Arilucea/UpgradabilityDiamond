# Empty diamond contract using hardhat
Empty diamond contract to be used as template to implement upgradability to solidity projects.

# Deploy contracts
1. Create a file called `.env` in the root of the repo that contains the addresses PK and RPC endpoints of the network.
    ```bash
    MUMBAI_URL="https://rpc..."
    SECRET="0x...."
    ```
2. In file `scripts/updateDiamond.ts` replace the following parameters:
    
    * Line 43: `FacetNames` array, replace `MyFacet` with the facets you want to deploy.
    
    * Line 8-10 and 64: `init` function call paramaters with the parameters of the init funcion in `contracts/upgradeInitializers/DiamondInit.sol`.
3. Execute deployment script:
    ```bash
    npx hardhat run scripts/deployDiamond.ts --network <network-name>
    ```
4. Console log will show the facets and diamond address
    ```
    Diamond cut tx:  0x...
    Diamond address: 0x...
    Completed diamond cut
    ```

# Update deployment
1. In file `scripts/updateDiamond.ts` replace the following parameters:
 
    * Line 9: `address` with your deployed diamond address.

    * Line 20: `FacetNames` array `MyFacet` with the facet you want to update.

2. Execute update script:
    ```bash
    npx hardhat run scripts/updateDiamond.ts --network <network-name>
    ```
3. Console log will show the facets and diamond address
    ```
    Diamond cut tx:  0x...
    Diamond address: 0x...
    Upgraded diamond cut
    ```

# Resources
Contracts derived from:

https://github.com/mudgen/diamond-3

https://github.com/aavegotchi/aavegotchi-contracts

