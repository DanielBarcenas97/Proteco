%Resolver sistemas de ecuaciones lineales

A = [2 -1 1; 1 1 0; 0 1 -3] %Matriz de coeficientes

b = [3; 3; -7] %Vector de soluciones

X = inv(A)*b %Podemos calcular el vector de inc�gnitas de esta forma

X = A\b %Es preferible utilizar este operador, ya que este est� programado para funcionar de forma m�s eficaz y eficiente