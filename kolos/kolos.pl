/* 14 czerwca */
%a
shift([Head|Tail],L2) :- append(Tail, [Head], L2).

%b
fac(0, 1).
fac(N, F) :- N > 0, M is N - 1, fac(M, FM), F is N * FM.

sil(0, [1]).
sil(X, [Head|Tail]) :- X1 is X - 1, fac(X, Head), sil(X1, Tail).

/* 13 czerwca */
%a
twice([],[]).
twice([Head|Tail],[Head,Head|Tail2]) :- twice(Tail, Tail2).

%b
postorder(nil, []).
postorder(drzewo(X, L, P), W) :-
    postorder(L, LL),
    postorder(P, PP),
    append(LL, PP, Temp),
    append(Temp, [X], W).