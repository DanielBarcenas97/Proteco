%Programa que índica si una gráfica es símetrica respecto al eje Y 
%utilizando los valores de f(x)

x = -10:10

fx = x.^3 %x^2 Cada uno de los elementos del vector x elevado al cuadrado

tam = length(x) %Calculando el número de elemenstos del vector x

fx_invertido = fx(tam:-1:1) %Inviertiendo todo el vector fx

%Si los vectores fx y fx_invertido son iguales, significa que la gráfica
%es simétrica

if(fx == fx_invertido) %Comparando si son o no iguales las gráficas
    disp('La gráfica es simétrica respecto al eje Y')
else
    disp('La gráfica NO es simétrica respecto al eje Y')
end

plot(x,fx) %Dibujando gráfica














