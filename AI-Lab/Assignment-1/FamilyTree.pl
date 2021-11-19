parent(madhusudan, dinesh).
parent(madhusudan, mitali).
parent(gauri, dinesh).
parent(gauri, mitali).
parent(dinesh, mithoon).
parent(hena, mithoon).
parent(lukesh, chandan).
parent(mitali, chandan).
parent(mithoon, rohit).
parent(ananya, rohit).
parent(chandan, neel).
parent(preeti, neel).
parent(rohit, rumpi).
parent(aditi, rumpi).
parent(neel, bela).
parent(rupsha, bela).
parent(deepak, proma).
parent(rumpi, proma).
parent(bela, pritom).
parent(rupom, pritom).
parent(arpan, arnob).
parent(proma, arnob).
parent(pritom, purnota).
parent(orthi, purnota).

male(madhusudan).
male(dinesh).
male(lukesh).
male(mithoon).
male(chandan).
male(rohit).
male(neel).
male(deepak).
male(rupom).
male(arpan).
male(priton).
male(arnob).

female(gauri).
female(hena).
female(mitali).
female(ananya).
female(preeti).
female(aditi).
female(rupsha).
female(rumpi).
female(bela).
female(proma).
female(orthi).
female(purnota).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
sibling(X, Y) :- father(Z, X), father(Z, Y), X \= Y.

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).

great_grandparent(X, Y) :- parent(X, Z), grandparent(Z, Y).
great_grandfather(X, Y) :- great_grandparent(X, Y), male(X).
great_grandmother(X, Y) :- great_grandparent(X, Y), female(X).

great_great_grandparent(X, Y) :- parent(X, Z), great_grandparent(Z, Y).
great_great_grandfather(X, Y) :- great_great_grandparent(X, Y), male(X).
great_great_grandmother(X, Y) :- great_great_grandparent(X, Y), female(X).

great_great_great_grandparent(X, Y) :- parent(X, Z), great_great_grandparent(Z, Y).
great_great_great_grandfather(X, Y) :- great_great_great_grandparent(X, Y), male(X).
great_great_great_grandmother(X, Y) :- great_great_great_grandparent(X, Y), female(X).

great_great_great_great_grandparent(X, Y) :- parent(X, Z),
                                             great_great_great_grandparent(Z, Y).

great_great_great_great_grandfather(X, Y) :- great_great_great_great_grandparent(X, Y),
                                             male(X).

great_great_great_great_grandmother(X, Y) :- great_great_great_great_grandparent(X, Y),
                                             female(X).

first_cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).
second_cousin(X, Y) :- grandparent(A, X), grandparent(B, Y), sibling(A, B).
third_cousin(X, Y) :- great_grandparent(A, X), great_grandparent(B, Y), sibling(A, B).

first_cousin_once_removed(X, Y) :- grandfather(Z, X),
                                   great_grandfather(Z, Y),
                                   parent(W, Y), first_cousin(X, W).

first_cousin_twice_removed(X, Y) :- grandfather(Z, X),
                                   great_great_grandfather(Z, Y),
                                   grandparent(W, Y), first_cousin(X, W).

second_cousin_once_removed(X, Y) :- great_grandfather(Z, X),
                                    great_great_grandfather(Z, Y),
                                    parent(W, Y), second_cousin(X, W).

second_cousin_twice_removed(X, Y) :- great_grandfather(Z, X),
                                     great_great_great_grandfather(Z, Y),
                                     grandparent(W, Y), second_cousin(X, W).

third_cousin_once_removed(X, Y) :- great_great_grandfather(Z, X),
                                   great_great_great_grandfather(Z, Y),
                                   parent(W, Y), third_cousin(X, W).

third_cousin_twice_removed(X, Y) :- great_great_grandfather(Z, X),
                                    great_great_great_great_grandfather(Z, Y),
                                    grandparent(W, Y), third_cousin(X, W).
