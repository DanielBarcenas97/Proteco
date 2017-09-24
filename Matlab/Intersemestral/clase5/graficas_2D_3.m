%Graficar con diferentes estílos de línea

%Graficando una señal cuadrada

A = 3; %Amplitud de la señal
f = 1; %Frecuencia de un Hert
w = 2 * pi * f; %Frecuencia angular
t = 0:0.0001:5;

cuadrada = A * square(w*t);

%De color rojo y con línea discontinua
plot(t, cuadrada, 'r--')

%Color cyan y los puntos no se unen con una línea, son puntos discretos
%porque se usó un marcador
plot(t, cuadrada, 'c+')

%Línea puntedada de color negro y marcadores de asterísco
plot(t, cuadrada, 'k:*')




