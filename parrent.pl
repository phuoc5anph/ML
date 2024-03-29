parent(vitalis, mary). %Vitalis là cha/mẹ (parent) của Remi
parent(vitalis, remi).
parent(barberin, remi).
parent(barberin, mattia).
parent(lise, dolce).
parent(remi, dolce).
parent(remi, capi).
parent(remi, arthur).
parent(arthur, jolicouer).

female(remi).
female(mattia).
female(dolce).
female(lise).
female(mary).
male(vitalis).
male(barberin).
male(capi).
male(arthur).
male(jolicouer).


grandparent(X, Z) :-
parent(X, Y),
parent(Y, Z),
write(X),
write(' is grandparent of '),
write(Z),nl.

ancestor(X, Y) :-
parent(X, Y),
write(X),
write(' is ancestor of '),
write(Y),nl.

ancestor(X, Y) :-
parent(X, Z),
ancestor(Z, Y),
write(X),
write(' is ancestor of '),
write(Y),nl.

brother(X, Y) :-
parent(Z,X),
parent(Z,Y),
male(X),
X \== Y.

sister(X,Y):-
parent(Z,X),
parent(Z,Y),
female(X),
X \== Y.

uncle(X, Y):-
brother(X, B),
parent(B, Y),
male(X),
not(parent(X,Y)).

aunt(X, Y):-
sister(X, Z),
parent(Z, Y),
female(X),
not(parent(X, Y)),
write(X),
write(' is aunt of '),
write(Y),nl.





