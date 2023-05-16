domains

predicates

    factorial(integer, integer)

clauses

    factorial(0, 1).
    factorial(N, Ans) :- N1 = N-1, factorial(N1, NAns), Ans = N * NAns.