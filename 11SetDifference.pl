domains
    list = integer*
predicates

    set_difference(list, list, list)
    member(list, integer)

clauses

#_ Similar to Union code 

#* Only this line is different
    set_difference([], _, []).


    set_difference([H|T], L2, L) :- member(L2, H) , ! , set_difference(T, L2, L).

    set_difference([H|T], L2, [H|T3]) :- set_difference(T, L2, T3).

    member([], _) :- fail.
    member([X|_], X).
    member([H|T], X) :- member(T, X).

