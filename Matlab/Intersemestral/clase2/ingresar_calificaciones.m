%Ejercicio que calcula el promedio de las calificaciones ingresadas

num_calfs = input('Numero de calificaciones a ingresar: ');

calif = zeros(1, num_calfs); %Creando arreglo para poder ingresar las calificaciones

for i = 1:num_calfs
    calif(i) = input('Ingresa calificacion: ');
end

promedio = mean(calif) %mean calcula el promedio o la media de un vector