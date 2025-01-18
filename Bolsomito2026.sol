// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract Bolsomito2026 is ERC20, Ownable {
    constructor(address initialOwner) 
        ERC20("Bolsomito 2026", "BOLSO")
        Ownable(initialOwner)
    {
        // Mint 200 milhões de tokens
        // 18 casas decimais (padrão ERC20)
        _mint(msg.sender, 200_000_000 * 10**decimals());
    }
}