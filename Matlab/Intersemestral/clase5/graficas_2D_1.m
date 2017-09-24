%Gr�ficas en 2 dimensiones

%plot()
%Crear una gr�fica a partir de dos vectores o columnas de matrices, con
%escalas lineales en los dos ejes

%Pasando un vector como argumento

x = [1 2 3 4 5 6 5 3 7 4 9]

plot(x) 
%Cada uno de los elementos del vector representan la ordenada (Y) y los
%�ndices de cada elemento representan la abscisa (X)
%La funci�n plot por defecto une cada punto con una l�nea recta

%Pasando dos vectores como argumentos

x = [1 6 5 2 1], y = [1 0 4 3 1]

plot(x,y)
%El primer vector representa las abscisas y el segundo vector las ordenadas

%Graficando la funci�n seno
x = 0:0.001:2*pi;
y = sin(x);

plot(x,y)

%Poner un t�tulo a la gr�fica
title('Gr�fica de un seno');

%Etiquetas en los ejes

xlabel('Eje X')
ylabel('Eje Y')

%Cuadr�cula en la gr�fica

grid

%Quitar cuadr�cula

grid off

%Agregar un nombre a la l�nea de la gr�fica

legend('seno(x)')

%La funci�n plot() dibuja una nueva figura en la ventana activa,
%sustituyendo cualquier gr�fica que ya se hubiera creado o dibujado
%anteriormente en esa ventana. Si no hay ventana abierta, abre una nueva.

%Cerrar una ventana

close









