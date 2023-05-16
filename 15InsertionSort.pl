domains 
    list = integer*

predicates
    insertion_sort(list, list)
    i_sort(list, list, list)
    insert(integer, list, list)

clauses

    insertion_sort(L, Sorted) :- i_sort(L, [], Sorted).

    i_sort([], Acc, Acc).
    i_sort([H|T], Acc, Sorted) :- insert(H, Acc, NAcc), i_sort(T, NAcc, Sorted ).

    insert(X, [], [X]).
    insert(X, [H | T1], [X,H | T1] ) :- X =< H .
    insert(X, [H|T1], [H|T2]) :- X > H, insert(X, T1, T2).


