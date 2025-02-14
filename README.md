# Silent Failure on Transfer to Zero Address

This Solidity smart contract demonstrates a common error: silent failure when attempting to transfer tokens to the zero address.  The `transfer` function lacks proper error handling for this edge case, leading to potential loss of funds.

The provided solution demonstrates a robust approach to prevent this silent failure by explicitly checking for the zero address and reverting the transaction.

## Bug

The `bug.sol` file contains the flawed `transfer` function.  It doesn't handle the case where `_to` is the zero address, resulting in a silent failure.

## Solution

The `bugSolution.sol` file corrects the issue by adding a `require` statement to check for the zero address before attempting the transfer. If the recipient is the zero address, the transaction reverts with an error message, preventing token loss.
