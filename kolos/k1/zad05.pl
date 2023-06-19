shift([],[]).
shift([H|T], L2) :- append(T, [H], L2).
