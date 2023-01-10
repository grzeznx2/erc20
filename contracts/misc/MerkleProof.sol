// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MerkleProof {
    
    function verify(bytes32[] memory proof, bytes32 root, bytes32 leaf, uint index) public pure returns (bool){
        bytes32 hash = leaf;

        for(uint i = 0; i < proof.length; i++){
            
        }

        return hash == root;
    }
}