members2(X, L) :- count(X, L, C), C > 1.
count(_, [], 0).
count(X, [X|Tail], C) :- count(X, Tail, C1), C is C1 + 1.
count(X, [_|Tail], C) :- count(X, Tail, C).

/*
member2(X,L) :- count(X, L, C), C > 1.
count(_, [], 0).
count(X, [X|T], C) :- count(X, T, C1), C is C1 + 1.
count(X, [_|T], C) :- count(X, T, C1), C is C1 + 0.
*/

down(0, [0]).
down(N, [N|Tail]) :- N1 is N - 1, down(N1, Tail).