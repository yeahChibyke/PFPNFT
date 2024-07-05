// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {DeployPfpNft} from "../script/DeployPfpNft.s.sol";
import {PfpNft} from "../src/PfpNft.sol";

contract TestPfpNft is Test {
    DeployPfpNft public deployPfpNft;
    PfpNft public pfpNft;

    function setUp() public {
        deployPfpNft = new DeployPfpNft();
        pfpNft = deployPfpNft.run();
    }

    function testNameAndSymbolIsCorrect() public view {
        bytes32 hashedExpectedName = keccak256(abi.encodePacked("yeahChibyke"));
        bytes32 hashedExpectedSymbol = keccak256(abi.encodePacked("$yC"));

        bytes32 hashedActualName = keccak256(abi.encodePacked(pfpNft.name()));
        bytes32 hashedActualSymbol = keccak256(abi.encodePacked(pfpNft.symbol()));

        assert(hashedExpectedName == hashedActualName);
        assert(hashedExpectedSymbol == hashedActualSymbol);
    }
}
