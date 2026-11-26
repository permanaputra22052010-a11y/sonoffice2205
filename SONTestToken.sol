// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// Educational test token only. Deploy only to Base Sepolia, never treat as real USDC.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract SONTestToken is ERC20, Ownable {
    constructor() ERC20("SON Test Token", "SONTEST") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
    function faucet(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
