// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Withdraw {
    // @notice make this contract able to receive ether from anyone and anyone can call withdraw below to withdraw all ether from it
    function withdraw() public {
        // your code here
        // send all ethe 

        payable(msg.sender).transfer(address(this).balance);

    }

    // @notice fallback function to receive ether

    receive() external payable {}
}
