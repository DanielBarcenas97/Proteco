%tipos de datos en MATLAB

%Double
%N�meros reales de doble presici�n
%MATLAB trabaja con este tipo de n�meros por defecto

realmin %N�mero m�s peque�o con el que se puede trabajar en MATLAB

realmax %N�mero m�s grande con el que se puede trabajar en MATLAB

%Enteros
%
%Cuando sabemos que el n�mero ser� entero, podemos utilizar este tipo de
%variables

% Num bytes   Con Signo    Sin Signo
%     1           int8        uint8
%     2           int16       uint16
%     4           int32       uint32
%     8           int64       uint64

a = int32(56)

A = [4 5 6; 7 8 9]
B = int32(A)

%Valor m�nimo que podemos representar de forma entera

intmin('int32')
intmin('int8')

%Valor m�ximo que podemos representar de forma entera

intmax('int32')
intmax('int8')

%Saber si un n�mero es entero o no

isinteger(a) %Pregunta si es entero, si s�, da como resultado 1
isinteger(2.3) %Regresa 0 como resultado, porque no es entero

%Saber que tipo de variable es un dato

class(a) %a es de la clase int32
class(2.3) %2.3 es de la clase double

%Preguntar si es de un tipo especifico de variable, un dato
%Regresa 1 si es verdadero, y cero si es falso 
isa(a, 'int32')
isa(a, 'double')

%Variables reales
%single        4 bytes
%double        8 bytes

d = single(5) 
e = double(5)

e = single(e) %Convirtiendo e que era double a single

%Valor m�ximo y m�nimo real que podemos utilizar

realmin('single')
realmax('single')

%Saber si un n�mero no es entero

isfloat(2.3) %Regresa 1, VERDADERO
isfloat(int32(2)) %Regresa 0, FALSO

%Variables logical
%Son variables que solo pueden tener dos valores, 1 (VERDADERO), 0 (FALSO)

J = A > 5 %Preguntamos si cada elemento de la matriz A es mayor a 5
%Nos devuelve una matriz con ceros y unos, para indicar cuales n�meros 
%s� son mayores a 5

%Con la matriz que estamos analizando y la matriz que tiene unos y ceros
%podemos hacer varias operaciones

A(J) = 80 %Cambia de la matriz A todos los valores que resultaron mayores a 5
%por el n�mero 80

%HACER EJERCICIO DONDE SE RECIBAN 20 CALIFICACIONES Y LOS QUE TENGAN
%CALIFICACI�N MENOR A 6, SE CAMBIEN AUTOM�TICAMENTE A CALIFICACI�N 5
%VER C�DIGO ejercicio_calificaciones.m

%N�MEROS COMPLEJOS

%Los n�meros complejos constan de dos partes
%Una parte real y una parte imaginaria

comp1 = sqrt(-4)
comp2 = 3 + 2j %Podemos utilizar la j o la i indistintamente
comp3 = [1+1i 2+2i; 3+3i 4+4i]

%Podemos crear un complejo con la funci�n complex(a,b)
%a es la parte real
%b es la parte imaginaria

complex(3,5)











