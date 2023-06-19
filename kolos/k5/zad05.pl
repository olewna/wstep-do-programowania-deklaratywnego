reverse([], []).
reverse([H|T], L2) :- reverse(T, ReverseT), append(ReverseT, [H], L2).