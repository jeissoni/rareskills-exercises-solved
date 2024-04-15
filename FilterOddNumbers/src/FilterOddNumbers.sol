// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract FilterOddNumbers {
    /*
        This exercise assumes you understand how to manipulate Array.
        1. Function `filterOdd` takes an array of uint256 as argument. 
        2. Filter and return an array with the odd numbers removed.
        Note: this is tricky because you cannot allocate a dynamic array in memory, 
              you need to count the even numbers then declare an array of that size.
    */

    function filterOdd(uint256[] memory _arr)
        public
        view
        returns (uint256[] memory)
    {
        uint256 aLen = _arr.length;
        uint256[] memory tmpArr = new uint256[](aLen);
        uint256 len = 0;
    
        for(uint256 i = 0; i < aLen ; i++) {
            if(_arr[i] % 2 == 0) {
                tmpArr[len++] = _arr[i];
            }
        }

        for(uint256 i = 0; i < len; i++) {
            console.log(tmpArr[i]);
        }

        uint256[] memory _newArr = new uint256[](len);
    
        for(uint256 i = 0; i < len; i++) {
            _newArr[i] = tmpArr[i];
        }
        return _newArr;
    }
}
