%Funciones que act�an sobre matrices

A = [1+1i 2+2i 3+3i; 4+4i 5+5i 6+6i]

%Transpuesta conjugada
%Crea la transpuesta de una matriz y cambia los n�meros complejos por su
%conjugado

A'

%Transpuesta sin su conjugado

A.'

%N�mero de filas y columnas

[filas, columnas] = size(A)

%N�mero de filas

filas = size(A,1)

%N�mero de columnas

columnas = size(A,2)
