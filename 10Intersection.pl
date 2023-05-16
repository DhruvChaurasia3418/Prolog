domains
    list = integer*
predicates

    Intersection(list, list, list)
    member(list, integer)

clauses

    Intersection([], _, []).
    Intersection([H|T], L2, [H|T3]) :- member(L2, H) , ! , Intersection(T, L2, T3).

    Intersection([H|T], L2, L) :- Intersection(T, L2, L).

    member([], _) :- fail.
    member([X|_], X).
    member([H|T], X) :- member(T, X).

