%Funciones que actúan sobre vectores

a = [2 4 10 9 6 4 2 3]

%Máximo elemento
max(a)

[maximo, posicion] = max(a)

%Mínimo elemento

min(a)

[minimo, posicion] = min(a)

%Suma de cada uno de los elementos de un vector

sum(a)

%Suma acumulativa

cumsum(a)

%Media o promedio de un vector

mean(a)

%Desviasión estandar de un vector

std(a)

%Producto de todos los elementos del vector

prod(a)

%Producto acumulativo

cumprod(a)

%Ordenar de mayor a menor los elementos de un vector

sort(a)

%Estas funciones también se pueden aplicar a matrices, pero la función se
%aplica a cada columna de la matriz, y devuelven un vector fila, con los
%resultados de cada columna

A = [2 8 4; 7 3 9]

[maximos, posiciones] = max(A)

%Si quisieramos el máximo de toda la matriz, se utiliza dos veces la
%función
max(max(A))

%IR AL CÓDIGO mejor_azucar.m