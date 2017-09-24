%Ejercicio que muestra la carga y la descarga de un capacitor en un
%circuito RC en serie

clc, clear

t = 0:0.001:10; %Tiempo de simulación de 10 segundos

C = input('Ingresa el valor del capacitor: ');
R = input('Ingresa el valor de la resistencia: ');
Vf = input('Ingresa el valor de la fuente en CD: ');

%Carga del capacitor
%El capacitor se carga con esta ecuación
%
%           Vc(t) = Vf(1 - e^((-1/RC)t))

%Valores sugeridos C = 4000e-6 y R = 100

Vc_carga = Vf*(1 - exp((-1/(R*C))*t));

Vc0 = Vc_carga(end);

subplot(2,2,1), plot(t,Vc_carga), title('Voltaje del Capacitor Carga')

%Descarga del capacitor
%El capacitor se descarga con esta ecuación
%
%           Vc(t) = Vc(0)*e^((-1/RC)t)

Vc_descarga = Vc0 * exp((-1/(R*C))*t);

subplot(2,2,3), plot(t,Vc_descarga), title('Voltaje del Capacitor Descarga')

%Corriente en capacitor cuando está cargandose
%La corriente en un capacitor cuando se está cargando es:
%
%           Ic(t) = (Vf/R)*e^((-1/RC)*t)

Ic_carga = (Vf/R)*exp((-1/(R*C))*t);

subplot(2,2,2), plot(t, Ic_carga), title('Corriente en el capacitor Carga')

%Corriente en capacitor cuando se está descargando
%La corriente se comporta de la siguiente manera:
%
%           Ic(t) = -(Vc0/R)*e^((-1/RC)*t)

Ic_descarga = -(Vc0/R)*exp((-1/(R*C))*t);

subplot(2,2,4), plot(t, Ic_descarga), title('Corriente en capacitor Descarga')




