// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./ERC20.sol";
import "./Pausable.sol";

abstract contract ERC20Pausable is Pausable, ERC20 {

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);

        require(!paused(),"ERC20Pausable: token transfer while paused");
    }

}