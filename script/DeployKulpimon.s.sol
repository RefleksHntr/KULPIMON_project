// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Script} from "forge-std/Script.sol";
import {KulpimonToken} from "../src/KulpimonToken.sol";

contract DeployKulpimon is Script {
    function run() external {
        vm.startBroadcast();
        new KulpimonToken();
        vm.stopBroadcast();
    }
}
