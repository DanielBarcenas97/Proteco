%Pidiendo al usuario número de calificaciones
num_calfs = input('Ingresa el numero de calificaciones: ');

%Creando un vector de ceros, para poder guardar la información
calf = zeros(1, num_calfs);

%Pidiendo al usuario las calificaciones
for i = 1:num_calfs
    calf(i) = input('Ingresa la calificacion: ');
end

%Eliminando las calificaciones que son mayores a 10
error_mayor = calf > 10;
calf(error_mayor) = [];

%Eliminando las calificaciones menores a 0
error_menor = calf < 0;
calf(error_menor) = [];

%Cambiando las calificaciones reprobatorias a 5
modificacion = calf < 6;
calf(modificacion) = 5;

%Calculando el promedio
promedio = mean(calf)

%El programa me indica si mi promedio es aprobatorio o es reprobatorio
if promedio >= 6
    disp('Tu promedio es aprobatorio')
else
    disp('Reprobaste')
end
