%Gráficas en 2 dimensiones

%plot()
%Crear una gráfica a partir de dos vectores o columnas de matrices, con
%escalas lineales en los dos ejes

%Pasando un vector como argumento

x = [1 2 3 4 5 6 5 3 7 4 9]

plot(x) 
%Cada uno de los elementos del vector representan la ordenada (Y) y los
%índices de cada elemento representan la abscisa (X)
%La función plot por defecto une cada punto con una línea recta

%Pasando dos vectores como argumentos

x = [1 6 5 2 1], y = [1 0 4 3 1]

plot(x,y)
%El primer vector representa las abscisas y el segundo vector las ordenadas

%Graficando la función seno
x = 0:0.001:2*pi;
y = sin(x);

plot(x,y)

%Poner un título a la gráfica
title('Gráfica de un seno');

%Etiquetas en los ejes

xlabel('Eje X')
ylabel('Eje Y')

%Cuadrícula en la gráfica

grid

%Quitar cuadrícula

grid off

%Agregar un nombre a la línea de la gráfica

legend('seno(x)')

%La función plot() dibuja una nueva figura en la ventana activa,
%sustituyendo cualquier gráfica que ya se hubiera creado o dibujado
%anteriormente en esa ventana. Si no hay ventana abierta, abre una nueva.

%Cerrar una ventana

close









