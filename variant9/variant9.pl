% variant9.pl
% Lab 1: Facts and Rules
% Variant 9

% student(Name, Group)
student(anna, group_101).
student(peter, group_101).
student(ivan, group_102).
student(maria, group_102).
student(olga, group_103).
student(sergey, group_103).

% Knows relation
knows(X, Y) :- 
    student(X, Group), 
    student(Y, Group), 
    X \= Y.

% Queries:
% 1. knows(anna, Who).
% 2. student(S, group_102).
% 3. student(ivan, Group).
% 4. knows(anna, peter).
%    knows(anna, ivan).