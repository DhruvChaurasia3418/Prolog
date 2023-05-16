domains
    list = integer*

predicates
    delete_all(list, X, list).

clauses

    delete_all([], _ , []).
    delete_all([X|T1], X, T2) :- delete_all(T1, X, T2).
    delete_all([H|T1], X, [H| T2]) :- H\=X,  delete_all( T1, X, T2).