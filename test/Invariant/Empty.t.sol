// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";

contract EmptyTest_Invariant is Test {
    function setUp() public {}

    function testTest() public {
        vm.skip(true);
    }
}
