%Definición de matrices y vectores

%Por convención los nombres de las matrices en MATLAB se escriben con
%mayúsculas y los nombres de los escalares y vectores en minúsculas
% 
% Una matriz consta de filas y columnas
% 
% Los elementos de una misma fila se separan con espacios en blacon o con
% comas (,)

%Las filas se separan por punto y coma (;) o con un enter

%Vector x (vecotor fila)
%Los elementos de un vector se escriben entre corchetes []

x = [5 10 15]
x = [5, 10, 15]

%Vector y (vector columna)

y = [20; 25; 30]

%Matriz A (3x3)

A = [1 2 3; 4 5 6; 7 8 9]

%La numeración de los índices de los elementos de una matriz comienza con
%el número 1

B = [5 6; 7 8; 9 10]

%     
%     1   2
%   ----------
% 1 | 5   6  |
% 2 | 7   8  |
% 3 | 9   10 |
%  ------------

%Para acceder a los elementos de un vector, tenemos que poner el nombre del
%vector, seguido de el índice entre paréntesis

%               vector(indice)

%El índice comienza con el NÚMERO 1

x(2) %Segundo elemento del vector x

%Si intentamos acceder a un elemento que no existe, nos manda un mensaje de
%error

x(10)

%Para acceder a los elementos de una matriz, se escribe el nombre de la
%matriz, seguida por los índices entre paréntesis, separados por una coma

%           matriz(fila, columna)

A(2,2)
A(1,3)

%También podemos acceder a un elemento de una matriz, con un solo índice

B(1,2)
B(4) %Contamos los elementos, se va contando por columnas

%Variable ans (answer)
%Cuando a un resultado no se le asigna una variable, MATLAB por defecto
%asigna el resultado a una variable llamada ans

a = 3+ans






