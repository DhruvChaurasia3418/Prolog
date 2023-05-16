domains
    list = integer*
predicates

    permute(list, list)
    delete(list, X, list).

clauses

    permute([], []).
    permute(L1, [H|T]) :- delete(H, L1, R),   permute(R, T).


    delete([X|T], X, T).
    delete([H|T], X, [H|T2]) :- delete(T, X, T2).

