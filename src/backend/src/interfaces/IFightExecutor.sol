// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IFightExecutor
 * @author PromptFighters team: Carlos
 * @dev Interface for the FightExecutor contract.
 */
interface IFightExecutor {
    // Check if more parameters needed for easier track of historical data in front-end graph
    event FightExecutor__FunctionsResults(bytes indexed firstEnd, bytes indexed secondEnd);
    // probably needs subId etc
    event FightExecutor__VrfResults(bytes indexed firstEnd, bytes indexed secondEnd);
    event FightExecutor__WinnerIs(bytes32 indexed fightId, address indexed winner, uint256 timestamp);

    // Calls Chainlink Functions, in the return calls VRF and in VRF return sets winner.
    /**
     * @dev This function must always be called by `FightMatchmaker` and then it starts
     * a fight via Chainlink Functions.
     *
     * After receiving the data from Chainlink Functions:
     * When receiving the 2 outcomes it requests a VRF random number with some bias based
     * on (something) or in a 50% chance of winning.
     *
     * After receiving the winning number then it sends the bets and announces the winners
     * via events.
     *
     * @param participants of the fight
     * @param nftIds of the nfts fighting
     */
    function startFight(address[2] calldata participants, uint256[2] calldata nftIds) external;
}
