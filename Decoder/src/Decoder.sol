// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract Decoder {
    /* This exercise assumes you know how abi decoding works.
        1. In the `decodeData` function below, write the logic that decodes a 
        `bytes` data, based on the function parameters
        2. Return the decoded data
    */
    bytes public encoded;

    function decodeData(
        bytes memory _data
    ) public view returns (string memory, uint256) {

        (string memory texto, uint256 valor) = abi.decode(_data, (string, uint256));
        console.logBytes(_data);
        console.log("Texto: %s and Valor: %s", texto, valor);
        return abi.decode(_data, (string, uint256));
    }
}

