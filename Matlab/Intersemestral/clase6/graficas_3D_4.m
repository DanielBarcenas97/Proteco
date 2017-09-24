%Grafica de reja

[U, V] = meshgrid(-8:0.5:8, -8:0.5:8);

R = sqrt(U.^2 + V.^2)+eps; %Se le suma eps para que cuando se calcule W, no se divida entre cero

mesh(U, V, R)

W = sin(R)./R;

mesh(W)

%Cuando a mesh se le pasa un parámetro, se utilizan los índices fila y
%columna de cada uno de los elementos como coordenadas x y y
%respectivamente

