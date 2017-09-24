%Operadores

%OPERADORES ARITM�TICOS
% 
% +       SUMA
% -       RESTA
% *       MULTIPLICACI�N
% '       TRANSPUESTA
% ^       POTENCIACI�N
% /       DIVISI�N

A = [1 2 3; 4 5 6; 7 8 9]
B = [2 4 6; 8 10 12; 14 16 18]

A+B %Sumando dos matrices, �stas deben ser del mismo tama�o para poder ser sumadas

A-B 

A*B %Multiplicaci�n de matrices, rengl�n por columna

A' %Transpuesta de una matriz, cambia los renglones, por las columnas

A^2 %Multiplica A*A

%Los operadores anteriores, tambi�n aplican para los n�mero escalares
%O se pueden hacer de forma mixta

%Cuando aplicamos un operador con una matriz y un escalar, la operaci�n se
%realiza con el escalar y cada uno de los elementos de la matriz

C = [1 2; 3 4]
C + 4 %Suma el n�mero cuatro a cada uno de los elementos de la matriz
C - 4 %Resta el n�mero cuatro a cada uno de los elementos de la matriz
C * 4 %Multiplica el n�mero cuatro a cada uno de los elementos de la matriz
C / 4 %Divide todos los elementos de una matriz, entre cuatro

%Operadores para resolver sistemas de ecuaciones lineales (\)
%Ir al c�digo sistemas_lineales.m

%Operadores elemento a elemento

[1 2 3 4].^2 %Eleva al cuadrado cada uno de los elementos del vector
 
[1 2 3 4].*[1 2 3 4] %Multiplica uno a uno los elementos de los vectores

















