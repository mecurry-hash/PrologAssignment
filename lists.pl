my_member(X, [X|_]).

my_member(X, [_|T]) :-
    my_member(X, T).

my_length([], 0).

my_length([_|T], N) :-
    my_length(T, N1),
    N is N1 + 1.

my_append([], L, L).

my_append([H|T], L, [H|R]) :-
    my_append(T, L, R).

my_reverse([], []).

my_reverse([H|T], L) :-
    my_reverse(T, R),
    my_append(R, [H], L).