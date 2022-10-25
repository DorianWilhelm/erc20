// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "../lib/forge-std/src/Test.sol";
import "../src/MyToken.sol";

contract ContractTest is Test {

    MyToken token;
    address alice = vm.addr(0x1);
    address bob = vm.addr(0x2);

    function setUp() public {
        token = new MyToken("GOKU", "GK");
    }

    function testName() external {
        assertEq("GOKU", token.name());
    }
}

