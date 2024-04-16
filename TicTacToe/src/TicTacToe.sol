// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
    /* 
        This exercise assumes you know how to manipulate nested array.
        1. This contract checks if TicTacToe board is winning or not.
        2. Write your code in `isWinning` function that returns true if a board is winning
           or false if not.
        3. Board contains 1's and 0's elements and it is also a 3x3 nested array.
    */

    function isWinning(uint8[3][3] memory board) public pure returns (bool) {
        // your code here

        bool winning = false;

        for (uint256 i = 0; i < board.length ; i++ ){

            for (uint256 j = 0; j < board[i].length ; j++){

                // Cheak if the board is winning by row
                if (board[i][0] == board[i][1] && board[i][1] == board[i][2]){
                    winning = true;
                }

                // Cheak if the board is winning by column
                if (board[0][j] == board[1][j] && board[1][j] == board[2][j]){
                    winning = true;
                }

                // Cheak if the board is winning by diagonal
                if (board[0][0] == board[1][1] && board[1][1] == board[2][2]){
                    winning = true;
                }

                // Cheak if the board is winning by diagonal
                if (board[0][2] == board[1][1] && board[1][1] == board[2][0]){
                    winning = true;
                }
            }

        }

        return winning;
    }
}

 /*
    0  1  0
    1  1  1
    0  0  1
 */