// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import { Script } from "forge-std/Script.sol";
import { ArticleNFT } from "../src/ArticleNFT.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract ArticleNFTScript is Script {
    ArticleNFT internal articleNFT;

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        articleNFT = new ArticleNFT();
        vm.stopBroadcast();
    }
}
