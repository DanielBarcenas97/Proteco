%Graficar varias curvas en una sola gráfica
%Los argumentos en la función plot se mandan como parejas

x = 0:0.001:2*pi;
y = sin(x); z = cos(x);

plot(x,y,x,z)

%Para poner las leyendas de cada gráfica, se pasan como argumentos a legend
%separados por una coma
legend('seno(x)', 'coseno(x)')

%Pasando matrices como argumento a plot()

A = magic(4)
B = magic(4)'
x = [4 7 9 13]

plot(A)
%Dibuja una línea por cada columna, las ordenadas serán los valores de los
%elementos de la columna y las abscisas serán los índices

plot(x,A)
%Ahora las abscisas son los valores del vector x

plot(A,B)
%Las columas de A representan las abscisas y las columnas de B las
%ordenadas
