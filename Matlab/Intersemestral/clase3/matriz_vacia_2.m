%Matrices vac�as

B = [] %Creando matriz vac�a

exist('B') %Preguntando si existe B, regresa 1 si es cierto

isempty(B) %Pregunta si la matriz est� vac�a, regresa 1 si es cierto

%Con una matriz vac�a podemos redimensionar una matriz

A = magic(3)

A(:,3) = [] %Los elementos de todas las filas de la columna 3, ser�n eliminados
            %La matriz A de 3x3 ahora es de 3x2
            
%Podemos eliminar elementos de un vector

a = [1 2 3 4 5 6 7 8 9 10]

a(3) = [] %Elimina el tercer elemento del vector 

a([1 5]) = [] %Elimina el primer y el quinto elemento del vector


