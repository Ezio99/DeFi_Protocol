// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC20Burnable,ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 @title Decentralized Stable coin
 @author Ezio99
Collateral: Exogenous (ETH and BTC)
Minting: Algorithmic
Relative Stability: Pegged to USD

Contract to be controlled by DSCEngine.

This contract is just the ERC20 implementation of the stablecoin
 */
contract DecentralizedStableCoin is ERC20Burnable, Ownable {
    error DecentralizedStableCoin__BurnAmountCantBe0();
    error DecentralizedStableCoin__BurnAmountMoreThanBalance();
    error DecentralizedStableCoin__NotZeroAddress();



    constructor() ERC20("EZCoin","EZC") Ownable(address(msg.sender)) {
    }

    function burn(uint256 _amount) public override onlyOwner{
        uint256 balance = balanceOf(msg.sender);
        if(_amount<=0){
            revert DecentralizedStableCoin__BurnAmountCantBe0();
        }

        if(balance < _amount){
            revert DecentralizedStableCoin__BurnAmountMoreThanBalance();
        }

        super.burn(_amount);
    }

    function mint(address _to, uint256 _amount) external onlyOwner returns(bool){
        if(_to == address(0)){
            revert DecentralizedStableCoin__NotZeroAddress();
        }
        if(_amount <=0){
            revert DecentralizedStableCoin__BurnAmountCantBe0();
        }
        super._mint(_to,_amount);
        return true;
    }



}