parent(john, bob).
parent(john, sarah).

parent(marry, bob).
parent(marry, sarah).

male(john).
male(bob).

female(marry).
female(sarah).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
