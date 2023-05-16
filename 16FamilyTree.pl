domains
    person = symbol

predicates
    husband(person, person)
    wife(person, person)
    son(person, person)
    father(person, person)
    mother(person, person)
    parent(person, person)
    male(person, person)
    female(person, person)

clauses

    male("A").
    male("B").
    male("C").
    male("D").
    male("E").
    male("F").
    female("P").
    female("Q").
    female("R").
    female("S").
    female("T").
    female("U").
    female("Z").

    #* A father_of B
    father("A","B").
    father("A","C").
    father("A","P").
    father("A","Q").
    father("C","D").
    father("C","E").
    father("E","F").


    #* A husband_of( S )
    husband("A", "Z").
    husband("B", "U").
    husband("C", "T").
    husband("D", "S").
    husband("E", "R").
    husband("F", "Q").

    wife(X,Y) :- husband(Y,X).
    mother(X,Z) :- father(Y,Z), husband(Y,X).
    parent(Y,Z) :- father(Y,Z), male(Y).
    parent(X,Z) :- mother(X,Z), female(X).
    son(Z,X) :- parent(X,Z).
    son(Z,Y) :- parent(Y,Z).



# husband("A", "Z")
# wife("U","B")
# son("B","A")