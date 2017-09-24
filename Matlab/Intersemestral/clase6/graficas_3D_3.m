%Graficando superficies en MATLAB

%Definiendo los l�mites de X y de Y
[X, Y] = meshgrid(-3:0.1:3, -1:0.1:1);

%Definiendo los valores de Z
%
%       Z = X * e^(-X^2 - Y^2)
%

Z = X.*exp(-X.^2 - Y.^2);

%Creando gr�fica de superficie
surf(X,Y,Z)

title('Gr�fica de superficie')
xlabel('X')
ylabel('Y')
zlabel('Z')
