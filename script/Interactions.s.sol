// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.8.0;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/Foundry-devops/src/DevOpsTools.sol";
import {PfpNft} from "../src/PfpNft.sol";

contract MintPfpNft is Script {
    
    string public constant PFP_URI = "ipfs://QmPP2EMAF1ask7NQYHuw3hfgUJjJDSQdbrnAhe8Fxp3b4G";
    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("PfpNft", block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        PfpNft(contractAddress).mintNft(PFP_URI);
        vm.stopBroadcast();
    }
    
}
