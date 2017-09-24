%Graficando superficies en MATLAB

%Definiendo los límites de X y de Y
[X, Y] = meshgrid(-3:0.1:3, -1:0.1:1);

%Definiendo los valores de Z
%
%       Z = X * e^(-X^2 - Y^2)
%

Z = X.*exp(-X.^2 - Y.^2);

%Creando gráfica de superficie
surf(X,Y,Z)

title('Gráfica de superficie')
xlabel('X')
ylabel('Y')
zlabel('Z')
