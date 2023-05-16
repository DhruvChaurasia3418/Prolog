domains
    list = integer*

predicates
    div(list, list, list)
    split(list, list, list, list)


clauses

    div(L,A,B) :- split(L,L,A,B).

    split(B, [_], [], B).
    split(B, [], [], B).
    split([H|T], [_, _ | T1], [H|T2], B) :- split(T, T1, T2, B).