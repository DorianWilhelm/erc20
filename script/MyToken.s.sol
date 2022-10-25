// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/MyToken.sol";

contract MyTokenScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new MyToken("MOLECULE", "MO");
        vm.stopBroadcast();
    }
}
