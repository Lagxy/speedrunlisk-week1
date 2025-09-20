// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Script, console} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";

contract DeployMyToken is Script {
    function run() public {
        vm.startBroadcast();
        MyToken token = new MyToken();
        vm.stopBroadcast();

        console.log("MyToken deployed to:", address(token));
    }
}
