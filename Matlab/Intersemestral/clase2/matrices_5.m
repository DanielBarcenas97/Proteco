%Matrices

%Matriz identidad

eye(5)

%Matriz con elementos ceros

zeros(5) %Matriz de 5x5
zeros(2,4) %Matriz de 2x4

%Matriz con elementos uno

ones(5)
ones(2,4)

%IR AL EJERCICIO ingresar_calificaciones.m

%Arreglo con valores igualmente espaciados
%linespace(x1, x2, num_de_elementos)

linspace(1,10,10)
linspace(1,10,20)

%Para crear una matriz con números aleatorios utilizamos el comando

rand(5) %Crea una matriz 5x5 con elementos aleatorios entre el cero y el uno

rand(5,3) %Crea una matriz 5x3 con números aleatorios

A = [1 2 3 ; 5 6 7 ; 9 10 11 ; 13 14 15 ]

size(A) %Devuelve el número de filas y el número de columnas de la matriz

%Estos números los podemos guardar en variables

[m n] = size(A)

x = [1 2 3 4 5]

tam = length(x)

%CREANDO MATRICES A PARTIR DE OTRAS MATRICES

zeros(size(A)) %Crea una matriz con las mismas dimensiones que otra matriz
ones(size(A))

diag(x) %Forma una matriz diagonal con los elementos de un vector previamente
        %creado, los elementos se colocan en la diagonal principal

%Para obtener los elementos de la diagonal de una matriz, utilizamos el
%comando diag

diag(A) %Regresa un vector columna
diag(A)' %Regresa un vector fila

%Para crear una matriz diagonal con la diagonal de una matriz

diag(diag(A))

%ACCEDIENDO A LOS ELEMENTOS DE UN VECTOR CON OTRO VECTOR

v = [1 3 4]
x = [10 20 30 40 50 60]

x(v) %Accedemos a los elementos del vector x con los índices del vector v

%ACCEDIENDO A LOS ELEMENTOS DE UNA MATRIZ CON DOS VECTORES

f = [2 4]; c = [1 2];

X = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]

X(f,c) %Elementos de la fila 2 con columnas 1 y 2
       %Elementos de la fila 4 con columas 1 y 2










