%Función figure

figure %Crea una nueva ventana vacía para poder graficar en ésta
x = 0:0.001:5;
y = sin(x);
plot(x,y) %Se graficará en la figura 1

figure %Crea una nueva ventana, llamada ahora figure2
       %La ventana figure1 permanece 

y2 = tan(x)

plot(x, y2) %Esta grafica se mostrará en figure2

figure(1) %Figura uno ahora será la que reciba los comandos

title('Función seno') %El título se aplicará a la ventana figure1

figure(2)
clf %Limpia el contendio de la figura activa