// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract CommitReveal {
    mapping(address => bytes32) public voteByUser;
    mapping(string => uint256) public voteCounts;

    function commitVote(bytes32 _secretVote) external {
        voteByUser[msg.sender] = _secretVote;
    }

    function revealVote(string memory _vote, string memory _salt) external {
        require(keccak256(abi.encodePacked(_vote, _salt)) == voteByUser[msg.sender], "CR: Vote and salt do not match the stored hash");
        voteCounts[_vote] += 1;
    }

    function getHash(string memory _foo, string memory _bar) external pure returns (bytes32){
        return keccak256(abi.encodePacked(_foo, _bar));
    }
}