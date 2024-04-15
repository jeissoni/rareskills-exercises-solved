// SPDX-License-Identifier: BUSL-1.1


pragma solidity ^0.8.13;

contract BasicBank {
    /// @notice deposit ether into the contract
    /// @dev it should work properly when called multiple times
    function addEther() external payable {

        //recibir ether en el contrato 
        require(msg.value > 0, "BasicBank: no ether sent");        
    }

    /// @notice used to withdraw ether from the contract (No restriction on withdrawals)
    function removeEther(uint256 amount) external payable {
        require(
            address(this).balance >= amount && amount > 0, 
            "BasicBank: insufficient balance"
        );
        // solhint-disable-next-line avoid-low-level-calls
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "BasicBank: failed to remove ether");        
    }
}
