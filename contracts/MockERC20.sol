pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MockERC20 is ERC20, Ownable {

    constructor(string memory _name, string memory _symbol) ERC20("MockERC20", "ME20") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}