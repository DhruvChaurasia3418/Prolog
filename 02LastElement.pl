domains
    list = integer*

predicates 
    last_element(list, integer)

clauses
    last_element([X], X).
    last_element([H|T], N) :- last_element(T, N).