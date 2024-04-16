// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;


contract CodeSize {
    /**
     * The challenge is to create a contract whose runtime code (bytecode) size is greater than 1kb but less than 4kb
     */
    
    // A bunch of variables and functions to increase bytecode size
    uint256 public var1;
    uint256 public var2;
    uint256 public var3;
    uint256 public var4;
    uint256 public var5;
    uint256 public var6;
    uint256 public var7;
    uint256 public var8;

    mapping (uint256 => uint256) public map1;
    mapping (uint256 => uint256) public map2;
    mapping (uint256 => uint256) public map3;
    mapping (uint256 => uint256) public map4;
    mapping (uint256 => uint256) public map5;
    mapping (uint256 => uint256) public map6;

    
    constructor() {
        // Initialize variables
        var1 = 1;
        var2 = 2;
        var3 = 3;
        var4 = 4;
        var5 = 5;
        var6 = 6;
        var7 = 7;
        var8 = 8;
        
        // Some calculations to increase bytecode size
        uint256 result = var1 + var2 + var3 + var4 + var5;
        result += result;
        result -= result;
        result *= result;
        result++;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    function pow (uint256 a, uint256 b) public pure returns (uint256) {
        return a ** b;
    }

    function div (uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }

    function mul (uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    function mod (uint256 a, uint256 b) public pure returns (uint256) {
        return a % b;
    }

    function addMap(uint256 key, uint256 value) public {
        map1[key] = value;
    }

    function subMap(uint256 key, uint256 value) public {
        map1[key] -= value;
    }

    


}

