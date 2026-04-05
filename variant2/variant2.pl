cat(butsy).
cat(corny).
cat(mactavity).

dog(flash).
dog(rover).
dog(spot).

brown(butsy).
black(corny).
ginger(mactavity).
ginger(rover).
white(spot).
spotted(flash).

pedigree(X) :- owner(tom, X).
pedigree(X) :- owner(kate, X).

owner(tom, X) :- black(X).
owner(tom, X) :- brown(X).

owner(kate, X) :- dog(X), \+ white(X), \+ owner(tom, X).

owner(alan, mactavity) :- \+ owner(kate, butsy), \+ pedigree(spot).

animal(X) :- dog(X).
animal(X) :- cat(X).