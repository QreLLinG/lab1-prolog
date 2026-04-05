% variant2.pl
% Лабораторная работа №1: Факты и правила
% Вариант 2

% Кошки (Имя, Цвет)
cat(butsy).
cat(corny).
cat(mactavity).

% Собаки (Имя, Цвет)
dog(flash).
dog(rover).
dog(spot).

% Цвета кошек
brown(butsy).
black(corny).
ginger(mactavity).

% Цвета собак
ginger(rover).
white(spot).
spotted(flash).

% Родословная (имеют животные, которыми владеют Том или Кейт)
pedigree(X) :- owner(tom, X).
pedigree(X) :- owner(kate, X).

% Том владеет всеми чёрными и коричневыми животными
owner(tom, X) :- black(X).
owner(tom, X) :- brown(X).

% Кейт владеет всеми собаками не белого цвета, которые не являются собственностью Тома
owner(kate, X) :- dog(X), \+ white(X), \+ owner(tom, X).

% Алан владеет Мактэвити, если Кейт не владеет Бутси и если Спот не имеет родословной
owner(alan, mactavity) :- 
    \+ owner(kate, butsy), 
    \+ pedigree(spot).

% Все животные (для удобства)
animal(X) :- dog(X).
animal(X) :- cat(X).

% Запросы:
% 1. animal(X), \+ owner(_, X).
% 2. dog(D), (black(D); brown(D); ginger(D); white(D); spotted(D)).
% 3. owner(tom, X).
% 4. owner(kate, X), dog(X).
% 5. owner(Who, What).  % все владельцы
