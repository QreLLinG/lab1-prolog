% variant9.pl
% Лабораторная работа №1: Факты и правила
% Вариант 9

% Студенты (Имя, Группа)
student(anna, group_101).
student(peter, group_101).
student(ivan, group_102).
student(maria, group_102).
student(olga, group_103).
student(sergey, group_103).

% Знакомство
knows(X, Y) :- 
    student(X, Group), 
    student(Y, Group), 
    X \= Y.

% Запросы:
% 1. knows(anna, Who).
% 2. student(S, group_102).
% 3. student(ivan, Group).
% 4. knows(anna, peter).
%    knows(anna, ivan).
