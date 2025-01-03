# Incorrect Reward Calculation due to Unvalidated rewardRate

This bug demonstrates a vulnerability in the reward calculation logic of a DApp. The `calculateReward` function uses a global variable `rewardRate` without proper validation.  This can lead to incorrect reward calculations if `rewardRate` is manipulated or not properly initialized.

The solution involves adding input validation and using a more secure method to determine the `rewardRate`.  Specifically, the solution uses a getter function to retrieve the `rewardRate` from the contract's storage, thus enforcing a single point of access and validation. 

## Vulnerability

The vulnerability lies in the direct use of the global variable `rewardRate` without any checks or validation. An attacker could potentially manipulate this variable to their advantage, leading to incorrect reward payouts.  This is a common issue in Solidity contracts where global state changes without sufficient control mechanisms are not safe.

## Solution

The solution provided includes a getter function to fetch the `rewardRate` from contract storage.  This centralized approach ensures that the `rewardRate` is always fetched from a trusted source, preventing malicious manipulation.