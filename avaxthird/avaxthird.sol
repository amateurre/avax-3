// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9/access/Ownable.sol";

contract mod3 is ERC20, Ownable {
    constructor() ERC20("Avalanche", "AVAX") {
        _mint(msg.sender, 20);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);
    }
}
