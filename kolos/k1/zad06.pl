silnia(0, 1).
silnia(N, A) :- N > 0, N1 is N-1, silnia(N1, A1), A is N*A1.

sil(0, [1]).
sil(N, [H|T]) :- N > 0, silnia(N, H), N1 is N-1, sil(N1, T).