split(_, [], [], []).
split(X, [H|T], [H|L1], L2) :- X < H, split(X, T, L1, L2).
split(X, [H|T], L1, [H|L2]) :- X > H, split(X, T, L1, L2).
split(X, [X|T], L1, L2) :- split(X, T, L1, L2).