clc, clear %Limpiando variables y pantalla

%C�lculo del ang�lo de defasamiento entre una se�al que entra a un sistema
%y la salida del sistema

%Se utilizar� una entrada cosenoidal
%Se realizar�n los c�lculos utilizando fasores

%Se simular� con una entrada de un voltaje
%Y una salida de una corriente

%Elementos iniciales
t = 0:0.0001:1; %Tiempo de medici�n de 0 a 1 segundo

%Voltaje a 60Hz con �ngulo de fase 0� y amplitud de 127 Vrms
%          Dominio del tiempo              Fasor           
%
%       V = V cos(wt + angulo)  ---->   V = V < angulo       

f = 60; %Frecuencia de 60 Hz
w = 2*pi*60; %Frecuencia angular rad/s
A_voltaje = 127; %Amplitud de la se�al de voltaje de 127 volts

Vt = cos(w*t).*A_voltaje; %Voltaje en el tiempo

figure, plot(t,Vt), hold; %Graficando la se�al de voltaje

%Corriente a 60Hz con una amplitud medida por el usuario 
%y un �ngulo de defasamiento negativo, aleatorio entre 0 y 90�
%          Dominio del tiempo              Fasor           
%
%       I = I cos(wt + angulo)  ---->   I = I < angulo 


%El �ngulo se redondea para que sea entero y se pasa a radianes
angulo_corriente = deg2rad(round(-90*rand));

%Amplitud de la corriente de 5 amperes
A_corriente = input('Ingresa el valor de la corriente medido con el multimetro: '); 

It = cos(w*t - angulo_corriente).*A_corriente; %Corriente en el tiempo

plot(t, It); %Graficando la se�al de corriente

%Obteniendo fasores de voltaje y de corriente en n�meros complejos

%V = V < angulo    ---->     V = V cos(angulo) + jV sen(angulo)
Vf = complex(A_voltaje*cos(0), A_voltaje*sin(0));

%I = I < angulo    ---->     I = I cos(angulo) + jI sen(angulo)

If = complex(A_corriente*cos(angulo_corriente), A_corriente*sin(angulo_corriente));

%Calculando potencia
% S = V*I^*     Voltaje por el conjugado de la corriente

S = Vf * conj(If)

%Dibujando los fasores

figure, compass(S), hold;
compass(Vf), compass(If);

%Calculando el factor de potencia
%   fp = cos(angulo_potencia_aparente)

fp = cos(angle(S))

%Calculando penalizaci�n o bonificaci�n que nos dar� CFE
%
%Bonificaci�n fp > 0.9
%   
%       Bonificaci�n = (1/4)*(1-(90/fp))*100
%
%Penalizaci�n fp < 0.9
%
%       Penalizaci�n = (3/5)*((90/fp)-1)*100

if(fp == 0.9)
    disp('Tu factor de potencia es 0.9 no habra penalizacion ni bonificacion')
elseif(fp > 0.9)
    disp('Tu factor de potencia es mayor a 0.9, la bonificacion a recibir es:')
    bonificacion = (1/4)*(1-(90/fp))*100; %Calculando bonificaci�n con f�rmula de CFE
    
    if(bonificacion > 2.5)
        bonificacion = 2.5; %El m�ximo aplicable es 2.5%
    end
    
    bonificacion %Imprimiendo la bonificaci�n
    
else
    disp('Tu factor de potencia es menor a 0.9, la penalizacion a recibir es:')
    penalizacion = (3/5)*((90/fp)-1)*100; %Calculando la penalizacion con la f�rmula de CFE
    
    if(penalizacion >120)
        penalizacion = 120; %El m�ximo aplicable es 120%
    end
    
    penalizacion %Imprimiendo la penalizaci�n
    
end
    
    
    
    












