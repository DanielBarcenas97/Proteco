% Podemos guardar una o varias variables para ser usadas despues

% Para guardar una variable utilizamos el comando save
% 
% save nombre_del_archivo nombre_de_la_variable

% Creamos una variable

calificaciones = [5 10 6 9 8 7 8];

% Hay que seleccionar la carpeta en donde guardaremos la variable
save archivo_calificaciones calificaciones

% La variable se guardó en un archivo llamado:
%
% archivo_calificaciones.mat
%
% El archivo tiene otra extensión, la cuál es .mat

% Limpiamos el workspace 
clear

% Para cargar una variable se utiliza el comando load

% load nombre_del_archivo

%Debemos estar en la carpeta donde se encuentra el archivo
load archivo_calificaciones.mat