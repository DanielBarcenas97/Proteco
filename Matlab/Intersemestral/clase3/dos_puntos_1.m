%Operador dos puntos (:)

%Creando vectores fila

x = 1:10 %Incremento de uno en uno (Por defecto)
y = 1:2:10 %Incremento de dos en dos
z = 1:0.1:10 %Incremento de 0.1 en 0.1

%También se pueden hacer de forma descendente

w = 10:-1:0

%Con radianes

0:pi/4:2*pi %Recorriendo una circunferencia de 45° en 45°

%Para obtener un vector columna, utilizamos el operador transpuesta

[0:pi/4:2*pi]' %Recorriendo una circunferencia de 45° en 45°

%Operdador dos puntos para acceder a elementos de una matriz

A = magic(6)

A(6, 1:4) %De la sexta fila, obten los elementos de las columas 1 a la 4
A(3, : ) %Todos los elementos de la fila 3

%Cuando no sabemos alguna dimensión de nuestra matriz podemos utilizar la
%palabra end, el cual obtiene la última fila, o la última columna de
%nuestra matriz, según sea el caso

A(end, :) %Todos los elementos de la última fila
A(:, end) %Todos los elementos de la última columna

A(end - 1, :) %Todos los elementos de la penúltima fila
A(:, end - 1) %Todos los elementos de la penúltima columna

A(: , end-2 : end) %Todas las filas, y la antepenultima, la penultima y la 
                   %última columna

%Modificando matrices a partir de otras ya creadas

B = eye(6)

%Cambiamos las filas 2 4 y 6 de la matriz B con los elementos de
%todas sus columas, por los elementos de todas las columas de las filas uno
%a tres de la matriz A
B([2 4 6], :) = A(1:3, :)

%Invertir los elementos de un vector

y1 = rand(1,6) %Una fila y seis columas de números aleatorios

y2 = y1(6:-1:1) %Los elementos del rango funcionan como índices del vector y1

%IR A CÓDIGO simetria.m

%Convertir una matriz en un vector columna

A(:)


















