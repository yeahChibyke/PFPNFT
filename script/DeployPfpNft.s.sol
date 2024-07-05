// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.8.0;

import {Script} from "forge-std/Script.sol";
import {PfpNft} from "../src/PfpNft.sol";

contract DeployPfpNft is Script {
    function run() external returns(PfpNft) {
        vm.startBroadcast();
        PfpNft pfpNft = new PfpNft();
        vm.stopBroadcast();
        return pfpNft;
    }
}
