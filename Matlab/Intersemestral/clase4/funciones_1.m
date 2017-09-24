%Funciones en MATLAB

%Las funciones tienen nombre, valor de retorno y argumentos
%Los argumentos son los valores que le pasamos a las funciones entre
%par�ntesis

%Los valores de retorno son los resultados de ejecutar una funci�n

%FUNCIONES QUE OPERAN DE MODO ESCALAR

%Cuando se aplican a una matriz, act�an sobre cada uno de sus elementos.
%De mismo modo, si se aplican a un vector
%Tambi�n se pueden aplicar a escalares

%Funci�n seno
%Calcula el seno del argumento, el argumento debe estar en radianes

sin(pi/2)

%Funci�n seno en grados
%Calcula el seno del argumento, el argumento debe estar en grados

sind(90)

%Funci�n coseno

cos(pi/2)
cosd(90)

%Funci�n logaritmo natural

log(1)

%Funci�n logaritmo en base 10
 
log10(10)

%Funci�n exponencial

exp(1)

%Funci�n raiz cuadrada
%Puede devolver valores complejos

sqrt((-2:2))

%Funci�n redondeo
%Realiza el redondeo de un valor a su entero m�s pr�ximo

a = [-1.6 -1.5 -1.4 5.3 5.5 5.9] %0.5 sube

round(a)

%Quitar parte decimal

fix(a)

%Redondear "hacia abajo"
%Redondea el n�mero al entero anterior

floor(a)

%Redondear hacia arriba

ceil(a)

%Valor absoluto
%Obtiene el valor absoluto del argumento

abs(a)

%Parte real de un n�mero complejo

real(1.3 + 5.6i)

%Parte imaginaria de un n�mero complejo

imag(1.3 + 5.6i)

%�ngulo de fase
%Da el resultado en radianes

angle(1i)

%Convertir de radianes a grados

rad2deg(angle(1i))

%Convertir de grados a radianes

deg2rad(90)

%IR AL C�DIGO DE angulo_defasamiento.m















