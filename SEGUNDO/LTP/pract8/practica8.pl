% Ejercicio 19

factorial(1,1).
factorial(N,F) :- N>1, N1 is N-1, factorial(N1,F1),F is N*F1.

% Ejercicio 1

countTo(1,[1]).
countTo(2,[1,2]).
countTo(3,[1,2,3]).
countTo(4,[1,2,3,4]).

% Ejercicio 3

% Ejercicio 4

mymember(E,[E|_]).
mymember(E,[_|L]):- mymember(E,L).

% Ejercicio 5

myappend([],L,L).
myappend([E|L1],L2,[E|L3]):- myappend(L1,L2,L3).

% Ejercicio 7

swap([],[]).
swap([X],[X]).
swap([X,Y|Z],[Y,X|Z]).

% Ejercicio 8 Respuesta: Cuenta el numero de elementos en la Lista
mistery([],0).
mistery([_|T],N) :- mistery(T,M), N is M + 1.

% Ejercicio 9

subset2([],_).
subset2([A|X],Y) :- member(A,Y), subset2(X,Y).

% Ejercicio 10

sorted([]).
sorted([_]).
sorted([X,Y|T]) :- X =< Y, sorted([Y|T]).

% Ejercicio 11

remove(_,[],[]).
remove(C,[X|R],L) :- X == C, remove(C,R,L).
% remove(C,[X|R],W) :- X \== C, remove(C,R,W), L = [X|W]. Esta mal??
% Another version of inverse:
inverse2(L,I) :- inv(L,[],I).
inv([],I,I).
inv([X|L],A,I) :- inv(L,[X|A],I).

flatten([],[]).
flatten([X|L],[X|P]) :- atomic(X), flatten(L,P).
flatten([X|L],P) :- not(atomic(X)), flatten(X,P_X), flatten(L,P_L), append(P_X,P_L,P).        


prefix(P,L) :- append(P,_,L).
suffix(P,L) :- append(_,P,L).
sublist(S,L) :- suffix(L1,L),prefix(S,L1).

% Another version of sublist:
sublist2(S,L) :- append(_,L1,L),append(S,_,L1).

