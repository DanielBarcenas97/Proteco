%Otras funciones de gráficas en 2D

x = [10 20 30 40 50 60 70 80 90 100]
y = 10*rand(1,10);
 
plot(x, y)
bar(x,y) %Gráfica de barras
barh(x,y) %Gráfica de barras horizontal
stairs(x,y) %Gráfica de barras, barras sin relleno

%Para la gráfica de pastel, el vector debe sumar uno
x = [0.2 0.2 0.4 0.1 0.1] 

pie(x)
legend('uno', 'dos', 'tres', 'cuatro', 'cinco')
title('Gráfica de pastel')