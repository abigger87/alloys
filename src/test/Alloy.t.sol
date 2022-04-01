// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.13;

import {Alloy} from "../Alloy.sol";
import {DSTestPlus} from "./utils/DSTestPlus.sol";

contract AlloyTest is DSTestPlus {
    Alloy alloy;

    function setUp() public {
        console.log(unicode"🧪 Testing Alloy...");
        alloy = new Alloy();
    }

    function testMetadata() public {
        assertEq(alloy.name(), "Alloy");
        assertEq(alloy.symbol(), "ALLOY");
        assertEq(alloy.MAXIMUM_TOKENS(), 100);
        assertEq(alloy.KEEP_REWARD(), 100);
    }

    function testCast() public {
        // ....
        console.log(unicode"✅ cast tests passed!");
    }
}
