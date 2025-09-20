// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Test} from "forge-std/Test.sol";

contract emptyTest is Test {
    function setUp() public {}

    function testEmpty() public pure {
        assertTrue(true);
    }
}
