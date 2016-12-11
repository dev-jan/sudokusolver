/* Sudoku solver main */
:- use_module(library(clpfd)).

solvesudoku(Puzzle, Solution) :-
    Solution = Puzzle,
    Puzzle = [A1, B1, C1, D1, E1, F1, G1, H1, I1,
              A2, B2, C2, D2, E2, F2, G2, H2, I2,
              A3, B3, C3, D3, E3, F3, G3, H3, I3,
              A4, B4, C4, D4, E4, F4, G4, H4, I4,
              A5, B5, C5, D5, E5, F5, G5, H5, I5,
              A6, B6, C6, D6, E6, F6, G6, H6, I6,
              A7, B7, C7, D7, E7, F7, G7, H7, I7,
              A8, B8, C8, D8, E8, F8, G8, H8, I8,
              A9, B9, C9, D9, E9, F9, G9, H9, I9
              ],
    writeln("Solve sudoku..."),

    % all fields must be between 1 and 9
    Puzzle ins 1..9,

    % all rows must have only unique fields
    all_different([A1, B1, C1, D1, E1, F1, G1, H1, I1]),
    all_different([A2, B2, C2, D2, E2, F2, G2, H2, I2]),
    all_different([A3, B3, C3, D3, E3, F3, G3, H3, I3]),
    all_different([A4, B4, C4, D4, E4, F4, G4, H4, I4]),
    all_different([A5, B5, C5, D5, E5, F5, G5, H5, I5]),
    all_different([A6, B6, C6, D6, E6, F6, G6, H6, I6]),
    all_different([A7, B7, C7, D7, E7, F7, G7, H7, I7]),
    all_different([A8, B8, C8, D8, E8, F8, G8, H8, I8]),
    all_different([A9, B9, C9, D9, E9, F9, G9, H9, I9]),

    label(Solution), % resolve variables

    % print out solution
    writeln(""),
    writeln([A1, B1, C1, D1, E1, F1, G1, H1, I1]),
    writeln([A2, B2, C2, D2, E2, F2, G2, H2, I2]),
    writeln([A3, B3, C3, D3, E3, F3, G3, H3, I3]),
    writeln([A4, B4, C4, D4, E4, F4, G4, H4, I4]),
    writeln([A5, B5, C5, D5, E5, F5, G5, H5, I5]),
    writeln([A6, B6, C6, D6, E6, F6, G6, H6, I6]),
    writeln([A7, B7, C7, D7, E7, F7, G7, H7, I7]),
    writeln([A8, B8, C8, D8, E8, F8, G8, H8, I8]),
    writeln([A9, B9, C9, D9, E9, F9, G9, H9, I9]),
    writeln("").
