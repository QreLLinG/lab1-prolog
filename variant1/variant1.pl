% variant1.pl
% Лабораторная работа №1: Факты и правила
% Вариант 1

% Факты
dog(flash).
dog(rover).
cat(butsy).
horse(star).

black(flash).
brown(butsy).
ginger(rover).
white(star).

% Правила
pet(X) :- dog(X).
pet(X) :- cat(X).

animal(X) :- pet(X).
animal(X) :- horse(X).

owner(tom, X) :- dog(X), \+ black(X).
owner(kate, X) :- horse(X).
owner(kate, X) :- black(X).

% Запросы:
% 1. ginger(rover).
% 2. dog(X).
% 3. owner(Owner, Animal).
% 4. owner(Owner, Animal), \+ white(Animal).
