domains
    list = integer*
predicates

    append(list, list, list)

clauses

    append([], L2, L2).
    append([H|T], L2, [H|T3]) :- append(T, L2, T3).

