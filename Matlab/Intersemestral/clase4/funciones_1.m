%Funciones en MATLAB

%Las funciones tienen nombre, valor de retorno y argumentos
%Los argumentos son los valores que le pasamos a las funciones entre
%paréntesis

%Los valores de retorno son los resultados de ejecutar una función

%FUNCIONES QUE OPERAN DE MODO ESCALAR

%Cuando se aplican a una matriz, actúan sobre cada uno de sus elementos.
%De mismo modo, si se aplican a un vector
%También se pueden aplicar a escalares

%Función seno
%Calcula el seno del argumento, el argumento debe estar en radianes

sin(pi/2)

%Función seno en grados
%Calcula el seno del argumento, el argumento debe estar en grados

sind(90)

%Función coseno

cos(pi/2)
cosd(90)

%Función logaritmo natural

log(1)

%Función logaritmo en base 10
 
log10(10)

%Función exponencial

exp(1)

%Función raiz cuadrada
%Puede devolver valores complejos

sqrt((-2:2))

%Función redondeo
%Realiza el redondeo de un valor a su entero más próximo

a = [-1.6 -1.5 -1.4 5.3 5.5 5.9] %0.5 sube

round(a)

%Quitar parte decimal

fix(a)

%Redondear "hacia abajo"
%Redondea el número al entero anterior

floor(a)

%Redondear hacia arriba

ceil(a)

%Valor absoluto
%Obtiene el valor absoluto del argumento

abs(a)

%Parte real de un número complejo

real(1.3 + 5.6i)

%Parte imaginaria de un número complejo

imag(1.3 + 5.6i)

%Ángulo de fase
%Da el resultado en radianes

angle(1i)

%Convertir de radianes a grados

rad2deg(angle(1i))

%Convertir de grados a radianes

deg2rad(90)

%IR AL CÓDIGO DE angulo_defasamiento.m















