%Programa que �ndica si una gr�fica es s�metrica respecto al eje Y 
%utilizando los valores de f(x)

x = -10:10

fx = x.^3 %x^2 Cada uno de los elementos del vector x elevado al cuadrado

tam = length(x) %Calculando el n�mero de elemenstos del vector x

fx_invertido = fx(tam:-1:1) %Inviertiendo todo el vector fx

%Si los vectores fx y fx_invertido son iguales, significa que la gr�fica
%es sim�trica

if(fx == fx_invertido) %Comparando si son o no iguales las gr�ficas
    disp('La gr�fica es sim�trica respecto al eje Y')
else
    disp('La gr�fica NO es sim�trica respecto al eje Y')
end

plot(x,fx) %Dibujando gr�fica














