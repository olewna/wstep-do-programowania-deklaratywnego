down(0, [0]).
down(N, [N|T]) :- N1 is N-1, down(N1, T).