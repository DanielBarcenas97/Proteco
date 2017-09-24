%Con el comando plot3 podemos trazar gráficas en tres dimenisones

x = [1 2 3 4 5]
y = [1 2 3 4 5]
z = [1 2 3 4 5]

%Dibuja los puntos y los une con una línea recta
plot3(x,y,z)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')

%Función vectorial
%Función helice
%   F(r) = sin(r) x + cos(r) y + r z

%Ecuaciones paramétricas
r = 0:0.5:40;
x = sin(r);
y = cos(r);
z = 1.5*r;

plot3(x,y,z, 'x-')
title('Alambre de púas')

%Función espiral de radio variable
%Caracól de metrobus estación CU
r = 0:0.0001:20;
z = r;
x = z.*sin(r);
y = z.*cos(r);

plot3(x,y,z)


