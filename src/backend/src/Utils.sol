// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**
 * @dev A file with general data different contracts use,
 */

/**
 * @param source JavaScript source code
 * @param encryptedSecretsUrls Encrypted URLs where to fetch user secrets
 * @param donHostedSecretsSlotID Don hosted secrets slotId
 * @param donHostedSecretsVersion Don hosted secrets version
 * @param args List of arguments accessible from within the source code
 * @param bytesArgs Array of bytes arguments, represented as hex strings
 * @param subscriptionId Billing ID
 */
struct ChainlinkFuncsGist {
    string source;
    bytes encryptedSecretsUrls;
    uint8 donHostedSecretsSlotID; // NOT USING
    uint64 donHostedSecretsVersion; // NOT USING
    string[] args; // TODO: USING IN SIMPLE VERSION WITH PROMPTS STORED ON-CHAIN
    bytes[] bytesArgs; // NOT USING
    uint64 subscriptionId;
    uint32 gasLimit;
    bytes32 donID;
}

//******************** */
// CHAIN IDS
//******************** */

uint256 constant ETH_SEPOLIA_CHAIN_ID = 11155111;
uint256 constant AVL_FUJI_CHAIN_ID = 43113;

//******************** */
// Chainlink Contracts
//******************** */

//******************** */
// LINK Token
//******************** */

address constant ETH_SEPOLIA_LINK = 0x779877A7B0D9E8603169DdbD7836e478b4624789;
address constant AVL_FUJI_LINK = 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846;

//******************** */
// Chainlink Functions
//******************** */

address constant ETH_SEPOLIA_FUNCTIONS_ROUTER = 0xb83E47C2bC239B3bf370bc41e1459A34b41238D0;
address constant AVL_FUJI_FUNCTIONS_ROUTER = 0xA9d587a00A31A52Ed70D6026794a8FC5E2F5dCb0;

// fun-ethereum-sepolia-1 - in functions NPM package
bytes32 constant ETH_SEPOLIA_DON_ID = 0x66756e2d657468657265756d2d7365706f6c69612d3100000000000000000000;
// fun-avalanche-fuji-1 - in functions NPM package
bytes32 constant AVL_FUJI_DON_ID = 0x66756e2d6176616c616e6368652d66756a692d31000000000000000000000000;

// Propper gas limits should be tested and set, 35.000 is just a random first try.
uint32 constant GAS_LIMIT_FIGHT_GENERATION = 35_000;
uint32 constant GAS_LIMIT_NFT_GENERATION = 35_000;

// source.js - Files executed by CLFunctions at the end of this file.

//******************** */
// Chainlink VRF
//******************** */

address constant ETH_SEPOLIA_VRF_COORDINATOR = 0x8103B0A8A00be2DDC778e6e7eaa21791Cd364625;
address constant AVL_FUJI_VRF_COORDINATOR = 0x2eD832Ba664535e5886b75D64C46EB9a228C2610;

// 150 gwei
bytes32 constant ETH_SEPOLIA_KEY_HASH = 0x474e34a077df58807dbe9c96d3c009b23b3c6d0cce433e59bbf5b34f823bc56c;
// 300 gwei
bytes32 constant AVL_FUJI_KEY_HASH = 0x354d2f95da55398f44b7cff77da56283d9c6c829a4bdf1bbcaf2ad6a4d081f61;

uint16 constant ETH_SEPOLIA_REQ_CONFIRIMATIONS = 3;
uint16 constant AVL_FUJI_REQ_CONFIRIMATIONS = 3;

// Depends on execution cost of fullfillRandomWords().
// Estimate is 20.000 gas per word, we distribute bets "within" this function
// so lets keep it up. Proper testing of gas consumption should be made in order
// to assert a fitter value.
uint32 constant ETH_SEPOLIA_CALLBACK_GAS_LIMIT = 55_000;
uint32 constant AVL_FUJI_CALLBACK_GAS_LIMIT = 55_000;

//******************** */
// Chainlink CCIP
//******************** */

address constant ETH_SEPOLIA_CCIP_ROUTER = 0xD0daae2231E9CB96b94C8512223533293C3693Bf;
address constant AVL_FUJI_CCIP_ROUTER = 0x554472a2720E5E7D5D3C817529aBA05EEd5F82D8;

uint64 constant ETH_SEPOLIA_SELECTOR = 16015286601757825753;
uint64 constant AVL_FUJI_SELECTOR = 14767482510784806043;

//******************** */
// SHARED CONSTANTS
//******************** */

// @dev A value used in setFightState() calls to signal the function doesn't have to use
// the winner parameter.
uint256 constant NOT_DECIDING_WINNER_VALUE = 2;

//**************************** */
// CHAINLINK FUNCTIONS SCRIPTS
//**************************** */

// TODO: add files
bytes32 constant GENERATE_FIGHT_SCRIPT = keccak256(abi.encode(""));
bytes32 constant GENERATE_NFT_SCRIPT = keccak256(abi.encode(""));