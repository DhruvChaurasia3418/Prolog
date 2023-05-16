domains
    list = integer*
predicates

    Union(list, list, list)
    member(list, integer)

clauses

    Union([], L2, L2).
    Union([H|T], L2, L) :- member(L2, H) , ! , Union(T, L2, L).

    Union([H|T], L2, [H|T3]) :- Union(T, L2, T3).

    member([], _) :- fail.
    member([X|_], X).
    member([H|T], X) :- member(T, X).

