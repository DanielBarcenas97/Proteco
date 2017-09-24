%Comando hold

%hold on
%Permite trazar varias gr�ficas en una misma ventana

t = 0:0.0001:5;
cuadrada = square(2*pi*t);

plot(t, cuadrada) %Graficando se�al cuadrada

hold on %Activando el hold (sostener ventana)

diente_sierra = sawtooth(2*pi*t + 90*(2*pi/180)); %Se�al adelantada en 90 grados

plot(t, diente_sierra)

legend('Cuadrada', 'Diente de sierra');

%TODAS LAS GR�FICAS SE IMPRIMIRAN EN LA MISMA VENTANA HASTA QUE SE
%DESACTIVE EL HOLD

hold off %Desactivando el hold

%Borrar� todas las gr�ficas anteriores y s�lo quedar� el seno
plot(t,sin(t))

%Comando subplot
%Generar varias gr�ficas separadas, pero en la misma ventana

%       subplot(num_filas, num_columnas, posicion)

t = 0:0.001:10;

w = log(t); x = 10.*exp(-t); y = sin(t); z = cos(t); 

subplot(2,2,1), plot(t,w), title('Logar�tmo')
subplot(2,2,2), plot(t,x), title('Exponencial negativa')
subplot(2,2,3), plot(t,y), title('Seno')
subplot(2,2,4), plot(t,z), title('Coseno')

%IR A C�DIGO carga_descarga.m

%Funci�n axis
%Definir valores m�ximo y m�nimo de los ejes
%Tambi�n se modifica la escala de los ejes

t = 0:0.001:15;
plot(t,y), grid
axis('equal') %El escalado es igual en �mbos ejes
%[xmin xmax ymin ymax]
axis([0 10 0 3]) 







