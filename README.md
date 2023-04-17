# Introduction
This project uses programming language Ruby to create a terminal puzzle game Sudoku, the goal is to create a simple,
non-interactive environment for a single player to play Sudoku by typing in the coordinates and the corresponding value (between 1-9).

# Sample I/O & How the program is supposed to work
## An Overview: 
* a printout on the terminal
* a 9x9 table with indexes for columns and rows 
* 0 means that the value needs to be assigned
```
     0     1     2     3     4     5     6     7     8
  -------------------------------------------------------
0 |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |
  -------------------------------------------------------
1 |  7  |  8  |  9  |  0  |  2  |  3  |  4  |  5  |  6  |
  -------------------------------------------------------
2 |  4  |  5  |  6  |  7  |  8  |  9  |  1  |  2  |  3  |
  -------------------------------------------------------
3 |  0  |  1  |  2  |  8  |  4  |  0  |  9  |  6  |  7  |
  -------------------------------------------------------
4 |  6  |  9  |  7  |  3  |  1  |  0  |  8  |  4  |  5  |
  -------------------------------------------------------
5 |  8  |  4  |  5  |  6  |  9  |  7  |  3  |  0  |  2  |
  -------------------------------------------------------
6 |  2  |  3  |  1  |  5  |  7  |  4  |  6  |  9  |  8  |
  -------------------------------------------------------
7 |  9  |  6  |  8  |  2  |  3  |  1  |  5  |  7  |  4  |
  -------------------------------------------------------
8 |  5  |  7  |  4  |  9  |  6  |  8  |  2  |  3  |  0  |
  -------------------------------------------------------
```
## Sample Input:
`Your Next Answer("X, Y, Number"): 3,1,1`
it means that the value 1 is assigned to the position (3,1)   
## Sample Output:
```
     0     1     2     3     4     5     6     7     8
  -------------------------------------------------------
0 |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |
  -------------------------------------------------------
1 |  7  |  8  |  9  |  1  |  2  |  3  |  4  |  5  |  6  |
  -------------------------------------------------------
2 |  4  |  5  |  6  |  7  |  8  |  9  |  1  |  2  |  3  |
  -------------------------------------------------------
3 |  0  |  1  |  2  |  8  |  4  |  0  |  9  |  6  |  7  |
  -------------------------------------------------------
4 |  6  |  9  |  7  |  3  |  1  |  0  |  8  |  4  |  5  |
  -------------------------------------------------------
5 |  8  |  4  |  5  |  6  |  9  |  7  |  3  |  0  |  2  |
  -------------------------------------------------------
6 |  2  |  3  |  1  |  5  |  7  |  4  |  6  |  9  |  8  |
  -------------------------------------------------------
7 |  9  |  6  |  8  |  2  |  3  |  1  |  5  |  7  |  4  |
  -------------------------------------------------------
8 |  5  |  7  |  4  |  9  |  6  |  8  |  2  |  3  |  0  |
  -------------------------------------------------------
```
`Your Next Answer("X, Y, Number"):`
1 is inserted and the Sudoku game grid table is updated and printed on the terminal
## Sample Error Reporting
```
Your Next Answer("X, Y, Number"): 
0,3,2  
Invalid Input  
Your Next Answer("X, Y, Number"):  
```
If player attempts to input a number that has conflicts within the block or within the same line, 
an error message “Invalid Input” will be reported. Then the program will prompt the player to enter the answer again. 
The process will be repeated until the game is completed (i.e., all the missing number is filled in and in the correct position)
