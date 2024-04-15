// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Prueba {
    function test() public pure returns (string memory) {
        return "Hello, World!";
    }
}

contract Deployer {
    /*
        This exercise assumes you know how to deploy a contract.
        1. Create an empty contract.
        2. Deploy the contract and return the address in `deployContract` function.
    */
   address public addr;

   constructor() {
       addr = address(new Prueba());
    }

    function deployContract() public view returns (address) {
        // your code here

        return addr;
    }
}
