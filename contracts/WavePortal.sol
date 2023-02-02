// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    address[] senderAddress;

    constructor() {
        console.log("Run contract...");
    }

    function wave() public {
        senderAddress.push(msg.sender);
        console.log("%s deu tchauzinho!", msg.sender);
    }

    function getWavesAddress() public view returns (address[] memory) {
        return senderAddress;
    }

    function getTotalWaves() public view returns (uint256) {
        uint256 countTotalWaves = senderAddress.length;
        
        console.log("Temos um total de %d tchauzinhos!", countTotalWaves);
        return countTotalWaves;
    }
}