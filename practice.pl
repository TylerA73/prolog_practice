%	P01
%	Last element of a list

my_last([X],X).
my_last([_|L], X) :- my_last(L,X).

%	P02
%	Find the last but one element of a list


last_but_one([X,_],X).
last_but_one([_,Y|R], X) :- last_but_one([Y|R], X).

%	P03
%	Find the K'th element of a list

element_at(0, [X|_], X).
element_at(K, [_|L], X) :- K > 0, K1 is K - 1, element_at(K1, L, X).

%	P04
%	Find the number of elements in a list

num_elem([], 0).
num_elem([_|L], N) :- num_elem(L, N1), N is N1 + 1.

%	P05
%	Reverse a list

