%Funci�n figure

figure %Crea una nueva ventana vac�a para poder graficar en �sta
x = 0:0.001:5;
y = sin(x);
plot(x,y) %Se graficar� en la figura 1

figure %Crea una nueva ventana, llamada ahora figure2
       %La ventana figure1 permanece 

y2 = tan(x)

plot(x, y2) %Esta grafica se mostrar� en figure2

figure(1) %Figura uno ahora ser� la que reciba los comandos

title('Funci�n seno') %El t�tulo se aplicar� a la ventana figure1

figure(2)
clf %Limpia el contendio de la figura activa