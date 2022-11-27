// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IERC721.sol";

contract ERC721 is IERC721 {

    string private _name;
    string private _symbol;

    mapping(address => uint256) private _balances;
    mapping(uint256 => address) private _owners;
    mapping(uint256 => address) private _approvals;
    mapping(address => mapping(address => bool)) private _operators;

    constructor(string memory name_, string memory symbol_){
        _name = name_;
        _symbol = symbol_;
    }
}