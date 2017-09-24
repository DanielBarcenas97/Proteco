%Graficando respuesta de amplificador operacional 
%con retroalimentaci�n negativa ideal
%NOS DA UN AVISO SI EXISTE O NO DISTORSI�N POR SATURACI�N EN LA SALIDA

%Ingresando voltajes Vcc
mas_vcc = input('Ingresa +Vcc: ');
menos_vcc = input('Ingresa -Vcc: ');

%Ingresando valores de resisntecias para c�lculo de ganancia

disp('Ganancia = -(r2/r1)');

r1 = input('Ingresa el valor de r1: ');
r2 = input('Ingresa el valor de r2: ');

%Creando se�al de entrada (se�al senoidal)

t = 0:0.00001:0.5; %Duraci�n de la se�al, medio segundo
f = 440; %Frecuencia de la nota LA
w = 2*pi*f; %Frecuencia angular en radianes por segundo [rad/s]
seno = sin(w*t);

entrada_graf = figure 

entrada_graf = plot(t,seno) %Graficando la se�al de entrada

%Calculando la ganancia

Av = - (r2/r1)

%Obteniendo se�al de salida del amplificador inversor

%Se calculan los voltajes de salida con la f�rmula:
%               salida = Av * entrada
%Cada uno de los voltajes de entrada son multiplicados por la ganancia
%Cuando uno de los valores de salida sobrepasan los voltajes +Vcc y -Vcc
%Estos valores se mantienen en +Vcc y -Vcc porque el amplificador no puede
%dar valores m�s grandes que sus voltajes de alimentaci�n

salida = seno.* Av; %Salida sin recortes por saturaci�n

%AVISO DE DISTORSI�N POR SATURACI�N

if(any(salida > mas_vcc))
    disp('EXISTE DISTORSION POR SATURACION POSITIVA!!!!!!!')
end


if(any(salida < menos_vcc))
    disp('EXISTE DISTORSION POR SATURACION NEGATIVA!!!!!!!')
end

%Saturaci�n positiva
votajes_saturados_positivos = find(salida > mas_vcc); 
salida(votajes_saturados_positivos) = mas_vcc;

%Saturaci�n negativa
voltajes_saturados_negativos = find(salida < menos_vcc);
salida(voltajes_saturados_negativos) = menos_vcc;

salida_graf = figure

salida_graf = plot(t, salida) %La se�al se invirti� y cambi� su polaridad
                              %Cuando se sobrepasan los valores de +Vcc o
                              %-Vcc, estos se "saturan" recortando la se�al
                              
                              




















