%Funciones que act�an sobre vectores

a = [2 4 10 9 6 4 2 3]

%M�ximo elemento
max(a)

[maximo, posicion] = max(a)

%M�nimo elemento

min(a)

[minimo, posicion] = min(a)

%Suma de cada uno de los elementos de un vector

sum(a)

%Suma acumulativa

cumsum(a)

%Media o promedio de un vector

mean(a)

%Desviasi�n estandar de un vector

std(a)

%Producto de todos los elementos del vector

prod(a)

%Producto acumulativo

cumprod(a)

%Ordenar de mayor a menor los elementos de un vector

sort(a)

%Estas funciones tambi�n se pueden aplicar a matrices, pero la funci�n se
%aplica a cada columna de la matriz, y devuelven un vector fila, con los
%resultados de cada columna

A = [2 8 4; 7 3 9]

[maximos, posiciones] = max(A)

%Si quisieramos el m�ximo de toda la matriz, se utiliza dos veces la
%funci�n
max(max(A))

%IR AL C�DIGO mejor_azucar.m