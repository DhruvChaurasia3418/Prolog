domains
    list = integer*

predicates
    sum(lsit, integer)

clauses
    sum([], 0).
    sum([H|T], Ans) :- sum(T, TailAns), Ans = TailAns + H.
