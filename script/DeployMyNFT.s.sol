// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import { Script, console } from "forge-std/Script.sol";
import { MyNFT } from "../src/MyNFT.sol";

contract DeployMyNFT is Script {
    function run() public {
        vm.startBroadcast();
        MyNFT nft = new MyNFT();
        vm.stopBroadcast();

        console.log("MyNFT deployed to:", address(nft));
    }
}