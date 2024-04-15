// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/console.sol";


contract DistributeV2 {
    /*
        This exercise assumes you know how to sending Ether.
        1. This contract has some ether in it, distribute it equally among the
           array of addresses that is passed as argument.
        2. Write your code in the `distributeEther` function.
        3. Consider scenarios where one of the recipients rejects the ether transfer, 
           have a work around for that whereby other recipients still get their transfer
    */

    constructor() payable {}

    function distributeEther(address[] memory addresses) public {
        // your code here

        console.log("addresses.length: %d", addresses.length);

        require (addresses.length > 0, "No addresses provided");

        uint256 amount = address(this).balance / addresses.length;

        for (uint i = 0; i < addresses.length; i++) {
            
            bool huh = payable(addresses[i]).send(amount);

            console.log(huh);
        }

    }
}
