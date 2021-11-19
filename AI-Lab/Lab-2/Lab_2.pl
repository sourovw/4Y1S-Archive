parent(philip, charles).
parent(elezbeth, charles).

parent(charles, william).
parent(diana, william).

parent(charles, harry).
parent(diana, harry).

parent(william, george).
parent(kate, george).

parent(william, charlotte).
parent(kate, charlotte).

parent(william, louis).
parent(kate, louis).

male(philip).
male(charles).
male(william).
male(harry).
male(george).
male(louis).

female(elezbeth).
female(diana).
female(kate).
female(charlotte).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), male(X).

son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).

sibling(X, Y) :- father(Z, X), father(Z, Y), X\=Y.
brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).

uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).

nephew(X, Y) :- son(X, Z), sibling(Z, Y).
niece(X, Y) :- daughter(X, Z), sibling(Z, Y).

greatgrandparent(X, Y) :- parent(X, W), parent(W, Z),  parent(Z, Y).
greatgrandfather(X, Y) :- greatgrandparent(X, Y), male(X).
greatgrandmother(X, Y) :- greatgrandparent(X, Y), female(X).
