:- [sudoku]. % include sudoku solver

test() :-
    S = [_,_,_,2,6,_,7,_,1,
         6,8,_,_,7,_,_,9,_,
         1,9,_,_,_,4,5,_,_,

         8,2,_,1,_,_,_,4,_,
         _,_,4,6,_,2,9,_,_,
         _,5,_,_,_,3,_,2,8,

         _,_,9,3,_,_,_,7,4,
         _,4,_,_,5,_,_,3,6,
         7,_,3,_,1,8,_,_,_],

    writeln("Solve a sudoku to demonstrate how the solver works:"),
    solvesudoku(S, Solution),
    write("Finished. Solution: "),
    writeln(Solution).
