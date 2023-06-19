postorder(nil, []).
postorder(drzewo(X, L, P), W) :-
    postorder(L, LL),
    postorder(P, PP),
    append(LL, PP, Temp),
    append(Temp, [X], W).

/*
preorder(nil, []).
preorder(drzewo(X, L, P), [X|L2]) :-
    preorder(L, L1),
    preorder(P, P1),
    append(L1, P1, L2).


inorder(nil, []).
inorder(drzewo(X, L, P), L2) :-
    inorder(L, L1),
    inorder(P, P1),
    append(L1, [X|P1], L2).
*/