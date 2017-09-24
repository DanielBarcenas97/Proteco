%Resolver sistemas de ecuaciones lineales

A = [2 -1 1; 1 1 0; 0 1 -3] %Matriz de coeficientes

b = [3; 3; -7] %Vector de soluciones

X = inv(A)*b %Podemos calcular el vector de incógnitas de esta forma

X = A\b %Es preferible utilizar este operador, ya que este está programado para funcionar de forma más eficaz y eficiente