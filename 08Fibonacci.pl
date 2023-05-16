domains
    
predicates

    fibonacci(integer, integer)
    print_fib(integer)

clauses

    fibonacci(1, 0).
    fibonacci(2, 1).
    fibonacci(N, Ans) :- N>=3, N1 = N-1, N2 = N-2, fibonacci(N1, Ans1), fibonacci(N2, Ans2), Ans = Ans1 + Ans2.

    print_fib(1) :- write("0, ").
    print_fib(2) :- write("1, ").
    print_fib(N) :- N>=3, N1 = N-1, print_fib(N1), fibonacci(N, Ans) , write(Ans, ", ").