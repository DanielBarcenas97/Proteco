%Graficando respuesta de amplificador operacional 
%con retroalimentación negativa ideal

%Ingresando voltajes Vcc
mas_vcc = input('Ingresa +Vcc: ');
menos_vcc = input('Ingresa -Vcc: ');

%Ingresando valores de resisntecias para cálculo de ganancia

disp('Ganancia = -(r2/r1)');

r1 = input('Ingresa el valor de r1: ');
r2 = input('Ingresa el valor de r2: ');

%Creando señal de entrada (señal senoidal)

t = 0:0.00001:0.5; %Duración de la señal, medio segundo
f = 440; %Frecuencia de la nota LA
w = 2*pi*f; %Frecuencia angular en radianes por segundo [rad/s]
seno = sin(w*t);

entrada_graf = figure 

entrada_graf = plot(t,seno) %Graficando la señal de entrada

%Calculando la ganancia

Av = - (r2/r1)

%Obteniendo señal de salida del amplificador inversor

%Se calculan los voltajes de salida con la fórmula:
%               salida = Av * entrada
%Cada uno de los voltajes de entrada son multiplicados por la ganancia
%Cuando uno de los valores de salida sobrepasan los voltajes +Vcc y -Vcc
%Estos valores se mantienen en +Vcc y -Vcc porque el amplificador no puede
%dar valores más grandes que sus voltajes de alimentación

salida = seno.* Av; %Salida sin recortes por saturación

%Saturación positiva
votajes_saturados_positivos = find(salida > mas_vcc); 
salida(votajes_saturados_positivos) = mas_vcc;

%Saturación negativa
voltajes_saturados_negativos = find(salida < menos_vcc);
salida(voltajes_saturados_negativos) = menos_vcc;

salida_graf = figure

salida_graf = plot(t, salida) %La señal se invirtió y cambió su polaridad
                              %Cuando se sobrepasan los valores de +Vcc o
                              %-Vcc, estos se "saturan" recortando la señal
                              
                              




















