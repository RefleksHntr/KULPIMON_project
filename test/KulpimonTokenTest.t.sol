// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../src/KulpimonToken.sol";

contract KulpimonTokenTest is Test {
    KulpimonToken token;
    address owner = address(this);
    address nonOwner = address(0x1234);

    function setUp() public {
        vm.prank(owner);
        token = new KulpimonToken();
    }

    function testInitialSupply() public view {
        assertEq(token.totalSupply(), 10_000_000 * 10 ** token.decimals());
    }

    function testMintByOwner() public {
        vm.prank(owner);
        token.mint(owner, 1000 * 10 ** token.decimals());

        assertEq(token.totalSupply(), (10_000_000 + 1000) * 10 ** token.decimals());
        assertEq(token.balanceOf(owner), (10_000_000 + 1000) * 10 ** token.decimals());
    }
}
