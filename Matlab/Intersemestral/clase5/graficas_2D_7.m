 % Podemos especificar varios atributos de la gr�fica escribiendo sus
% nombres y sus valores en el comando plot

x = -pi:pi/10:pi;
y = tan(sin(x)) - sin(tan(x));

figure
plot(x,y,'--gs',...
    'LineWidth',2,... %LineWidth se refiere al ancho de la l�nea
    'MarkerSize',10,... %MarkerSize se refiere al tama�o del marcador
    'MarkerEdgeColor','b',... %MarkerEdgeColor se refiere al color del borde del marcador
    'MarkerFaceColor', 'k') %MarkerFaceColor se refiere al color de la cara del marcador 