// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title DSCEngine
 * @author Vaibhav Deb
 *
 * The system is designed to be as minimal as possible, and have the tokens maintain a 1
 * token == $1 peg.
 * This stablecoin has the properties:
 * - Exogenous Collateral
 * - Dollar Pegged
 * - Algorithmically Stable
 *
 * It is similar to DAI if DAI had no governance, no fees, and was only backed by WETH and
 * WBTC.
 * 
 * 
 * EZC should always be overcollateralized. At no point shoud the value of all collateral <= value of all EZC.
 *
 * @notice This contract is the core of the DSC System. It handles all the logic for mining
 * and redeeming EZC, as well as depositing & withdrawing collateral.
 * @notice This contract is VERY loosely based on the MakerDAO DSS (DAI) system.
 */
contract EZCEngine{

    function depositCollateralAndMintEZC() external  {}

    function depostiCollateral() external {}

    function redeemCollateralForEZC() external {}

    function redeemCollateral() external {}

    function burnEzc() external {}

    function liquidate() external{}

    function getHealthFactor() external view{}

}