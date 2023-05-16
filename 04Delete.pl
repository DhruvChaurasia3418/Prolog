domains
    list = integer*

predicates

    delete(list, integer, list)

clauses

#? WAP to delete given element from list

    delete([], _ , []).
    delete([X|T1], X, T1). 
    delete([H|T1], X,  [H|T2]) :- delete(T1, X, T2).

    #*              OR
    delete([H|T1], X,  [H|T2]) :- H \= X , delete(T1, X, T2).

