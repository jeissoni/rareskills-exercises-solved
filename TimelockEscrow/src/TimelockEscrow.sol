// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TimelockEscrow {

    address public seller;

    struct Escrow {
        uint256 amount;
        uint256 time;       
    }

    mapping(address => Escrow) public escrows;

    /**
     * The goal of this exercise is to create a Time lock escrow.
     * A buyer deposits ether into a contract, and the seller cannot withdraw it until 3 days passes. Before that, the buyer can take it back
     * Assume the owner is the seller
     */

    constructor() {
        seller = msg.sender;
    }

    // creates a buy order between msg.sender and seller
    /**
     * escrows msg.value for 3 days which buyer can withdraw at anytime before 3 days but afterwhich only seller can withdraw
     * should revert if an active escrow still exist or last escrow hasn't been withdrawn
     */
    function createBuyOrder() external payable {
        // your code here
        require(msg.value > 0, "The value must be greater than 0");
        require(escrows[msg.sender].amount == 0, "An active escrow still exist");
        require(escrows[msg.sender].time == 0, "Last escrow hasn't been withdrawn");
        escrows[msg.sender] = Escrow(msg.value, block.timestamp);           
    }

    /**
     * allows seller to withdraw after 3 days of the escrow with @param buyer has passed
     */
    function sellerWithdraw(address buyer) external {
        // your code here
        require (msg.sender == seller , "Only seller can withdraw");
        require (escrows[buyer].time + 3 days < block.timestamp, "The 3 days has not passed");
        payable(seller).transfer(escrows[buyer].amount);
    }

    /**
     * allowa buyer to withdraw at anytime before the end of the escrow (3 days)
     */
    function buyerWithdraw() external {
        // your code here
        require (escrows[msg.sender].time + 3 days > block.timestamp, "The 3 days has passed");
        payable(msg.sender).transfer(escrows[msg.sender].amount);
    }

    // returns the escrowed amount of @param buyer
    function buyerDeposit(address buyer) external view returns (uint256) {
        // your code here
        return escrows[buyer].amount;        
    }
}
