%Graficar con diferentes est�los de l�nea

%Graficando una se�al cuadrada

A = 3; %Amplitud de la se�al
f = 1; %Frecuencia de un Hert
w = 2 * pi * f; %Frecuencia angular
t = 0:0.0001:5;

cuadrada = A * square(w*t);

%De color rojo y con l�nea discontinua
plot(t, cuadrada, 'r--')

%Color cyan y los puntos no se unen con una l�nea, son puntos discretos
%porque se us� un marcador
plot(t, cuadrada, 'c+')

%L�nea puntedada de color negro y marcadores de aster�sco
plot(t, cuadrada, 'k:*')




