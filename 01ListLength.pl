domains
    list = integer*
predicates
    count(list, integer)
clauses
    count([], 0).
    count([_], 1).
    count([H|T], N) :- count(T, Tcount), N = Tcount + 1.