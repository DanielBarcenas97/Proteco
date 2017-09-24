%Operadores relacionales
% 
% < menor que
% > mayor que
% <= menor o igual que
% >= mayor o igual que
% == igual que
% ~= distinto que

% 1 VERDADERO
% 0 FALSO

%Con valores escalares

5 < 4 %FALSO
6 > 1 %VERDADERO
1 == 1 %VERDADERO
1 <= 1 %VERDADERO
1 ~= 1 %FALSO

%Con escalares y matrices

x = 5

x >= [1 2 3; 4 5 6; 7 8 9] 

%Se compara cada elemento de la matriz con el escalar y nos regresa una
%matriz con las mismas dimensiones y con elementos unos y ceros seg�n sea
%el resultado de la comparaci�n

%Comparaci�n de vectores

[1 2 3 4 5] == [1 2 3 4 6]

%Compara el primer elemento del primer arreglo, con el primer elemento del
%segundo arreglo, el segundo con el segundo y as� sucesivamente
%Los arreglos deben de ser de la misma dimensi�n
%Regresa un vector con unos y ceros seg�n el resultado de las comparaciones

%Comparaci�n de matrices

[1 2 3; 4 5 6] < [1 6 7; 3 4 6]

%Compara elemento a elemento de las matrices, deben ser de las mismas
%dimensiones y regresa una matriz con unos y ceros seg�n el resultado de
%las comparaciones

%Al comparar dos matrices o vectores con los operadores == o ~=, estos
%comparan elemento a elemento y nos regresan un vector o matriz con unos y
%ceros en donde son iguales o diferentes

%Para comprobar que una matriz o un vector son exactamente iguales
%utilizaremos el comando isequal

A = magic(3)
B = magic(4)

isequal(A,B) %Nos regresa un cero porque la matriz A es distinta de B

B = A

isequal(A,B) %Regresa uno porque las matrices son iguales

%N�tese la diferencia entre comparar con el operador == y con el comando
%isequal, el primero compara elemento a elemento y el segundo compara toda
%la matriz o el vector.
%El operador == regresa un vector con unos y ceros seg�n sea el caso y el
%comando isequal regresa solamente un uno o un cero.

%Comando find

A = magic(3)

indices = find(A > 4) %Regresa los �NDICES de los elementos que 
                      %cumplan con la condici�n, en un vector columna
                      
%Con estos �ndices podemos cambiar los valores que cumplan con la condici�n

A(indices) = 5

%IR A C�DIGO amplificador_operacional.m

%Comando any

A = magic(3)

any(A == 3) %Pregunta si alguno de los valores de las columnas
            %cumple con la condici�n, devuelve un uno si en alguna columna
            %hay al menos un valor que cumpla con la condici�n.

all(A > 0) %Pregunta si todos los elementos de una columna cumplen la condici�n
           %Regresa un vector fila, con unos o ceros seg�n el resultado
           
b = [1 2 3 4 5 4 3 2 1]

any(b == 3) %Pregunta si hay alg�n valor que sea igual a tres

%IR C�DIGO amplificador_operacional_distorsion.m



 







