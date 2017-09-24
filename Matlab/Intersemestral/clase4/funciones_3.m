%Funciones que actúan sobre matrices

A = [1+1i 2+2i 3+3i; 4+4i 5+5i 6+6i]

%Transpuesta conjugada
%Crea la transpuesta de una matriz y cambia los números complejos por su
%conjugado

A'

%Transpuesta sin su conjugado

A.'

%Número de filas y columnas

[filas, columnas] = size(A)

%Número de filas

filas = size(A,1)

%Número de columnas

columnas = size(A,2)
