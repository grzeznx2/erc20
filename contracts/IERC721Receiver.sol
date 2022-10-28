// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

interface IERC721Receiver {
    function onERC721Receiver(address operator, address from, uint256 tokenId) external returns (bytes4);
}