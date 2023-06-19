member2(X, [X|T]) :- member(X, T).
member2(X, [_|T]) :- member2(X, T).

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).