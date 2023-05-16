domains
    list = integer*

predicates
    member(list, integer)

clauses

    member([], _) :- fail.
    member([X|_], X).
    member([H|T], X) :- member(T, X).
