parent(adam,john).
parent(eve,john).
parent(eve,lisa).
parent(john,anne).
parent(john,pat).
parent(pat,jacob).
parent(carol,jacob).

male(adam).
male(john).
male(pat).
male(jacob).
female(eve).
female(lisa).
female(anne).
female(carrol).
mother(X,Y):-parent(X,Y), female(X).
father(X,Y):-parent(X,Y), male(X).

grandparent(X,Y):-parent(X,Z), parent(Z,Y).

grandmother(X,Y):-grandparent(X,Y), female(X).
grandfather(X,Y):-grandparent(X,Y), male(X).
