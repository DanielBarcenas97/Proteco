%Comando hold

%hold on
%Permite trazar varias gráficas en una misma ventana

t = 0:0.0001:5;
cuadrada = square(2*pi*t);

plot(t, cuadrada) %Graficando señal cuadrada

hold on %Activando el hold (sostener ventana)

diente_sierra = sawtooth(2*pi*t + 90*(2*pi/180)); %Señal adelantada en 90 grados

plot(t, diente_sierra)

legend('Cuadrada', 'Diente de sierra');

%TODAS LAS GRÁFICAS SE IMPRIMIRAN EN LA MISMA VENTANA HASTA QUE SE
%DESACTIVE EL HOLD

hold off %Desactivando el hold

%Borrará todas las gráficas anteriores y sólo quedará el seno
plot(t,sin(t))

%Comando subplot
%Generar varias gráficas separadas, pero en la misma ventana

%       subplot(num_filas, num_columnas, posicion)

t = 0:0.001:10;

w = log(t); x = 10.*exp(-t); y = sin(t); z = cos(t); 

subplot(2,2,1), plot(t,w), title('Logarítmo')
subplot(2,2,2), plot(t,x), title('Exponencial negativa')
subplot(2,2,3), plot(t,y), title('Seno')
subplot(2,2,4), plot(t,z), title('Coseno')

%IR A CÓDIGO carga_descarga.m

%Función axis
%Definir valores máximo y mínimo de los ejes
%También se modifica la escala de los ejes

t = 0:0.001:15;
plot(t,y), grid
axis('equal') %El escalado es igual en ámbos ejes
%[xmin xmax ymin ymax]
axis([0 10 0 3]) 







