% Family knowledge base

parent(anna, ben).
parent(anna, clara).
parent(david, ben).
parent(david, clara).
parent(clara, emma).
parent(frank, emma).
parent(ben, george).
parent(helen, george).
parent(emma, isaac).

male(david).
male(ben).
male(frank).
male(george).
male(isaac).

female(anna).
female(clara).
female(emma).
female(helen).


father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
    
ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B),
    X \= Y.