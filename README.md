# Sudoku solver
(Simple) prolog application to solve sudoku.

## How to run it?
Follow this simple steps to solve a sudoku:
1. Install a prolog environment:
```
    # on debian/ubuntu/mint based linux distributions
    sudo apt-get install swi-prolog

    # others: find out yourself on google... ;)
```

2. Run the prolog console
```
    $ cd <THIS_REPO>
    $ swi-pl
    Welcome to SWI-Prolog ....

    ?-
```

3. Define a sudoku and run the solver
```
    [sudoku].
    S = [_,_,_,2,6,_,7,_,1,
         6,8,_,_,7,_,_,9,_,
         1,9,_,_,_,4,5,_,_,
         8,2,_,1,_,_,_,4,_,
         _,_,4,6,_,2,9,_,_,
         _,5,_,_,_,3,_,2,8,
         _,_,9,3,_,_,_,7,4,
         _,4,_,_,5,_,_,3,6,
         7,_,3,_,1,8,_,_,_],
    solvesudoku(S, Solution).
```
or run the demonstration file:
```
    [demonstration].
    test.
```

The output will be something like this:
```
?- [sudoku].
true.

?- S = [_,_,_,2,6,_,7,_,1,
|       6,8,_,_,7,_,_,9,_,
|       1,9,_,_,_,4,5,_,_,
|       8,2,_,1,_,_,_,4,_,
|       _,_,4,6,_,2,9,_,_,
|       _,5,_,_,_,3,_,2,8,
|       _,_,9,3,_,_,_,7,4,
|       _,4,_,_,5,_,_,3,6,
|       7,_,3,_,1,8,_,_,_],
|  solvesudoku(S, Solution).
Solve sudoku...

Solution:
[4,3,5,2,6,9,7,8,1]
[6,8,2,5,7,1,4,9,3]
[1,9,7,8,3,4,5,6,2]
[8,2,6,1,9,5,3,4,7]
[3,7,4,6,8,2,9,1,5]
[9,5,1,7,4,3,6,2,8]
[5,1,9,3,2,6,8,7,4]
[2,4,8,9,5,7,1,3,6]
[7,6,3,4,1,8,2,5,9]

S = Solution, Solution = [4, 3, 5, 2, 6, 9, 7, 8, 1|...].

```
