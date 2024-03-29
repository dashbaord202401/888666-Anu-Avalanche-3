// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AnuToken is ERC20, Ownable {

constructor() ERC20("TokenForERC", "ERC") Ownable(msg.sender) {
    _mint(_msgSender(), 10 * 10 ** decimals());
}

    // Minting Function
    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    // Burn tokens
    function burn(uint256 amount) external onlyOwner {
        _burn(_msgSender(), amount);
    }

    // Function to transfer tokens with an additional check
    function transferWithCheck(address to, uint256 amount) external {

        _transfer(_msgSender(), to, amount);
    }
}
