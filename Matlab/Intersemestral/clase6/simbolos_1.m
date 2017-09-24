%Para resolver ecuaciones y hacer distintas operaciones matemáticas podemos
%utilizar los símbolos

%Creando un símbolo

x = sym('x')



%Creando varios símbolos

syms a b c d

%Lós símbolos puedes ser expresiones 
cociente = (a - b)/(c + d)

%Las expresiones simbólicas las podemos "poner bonitas"

pretty(cociente)

%Podemos expresar todo un polinomio en términos de una variable

syms x y

collect(x^2*y + y*x - x^2 - 2*x, x)
collect(x^2*y + y*x - x^2 - 2*x, y)

%Podemos desarrollar una expresión matemática

syms x y

expand((x - 2)*(x - 4))
expand((cos(x + y)))

%Podemos reducir una expresión

syms x

simplify((x^2 + 2*x - 1)*8*x)

%Derivar una función

syms x

y = sym(2*x^2)

derivada = diff(y) %El comando diff deriva
 
%Graficar una función

%Recibe la función y el rango en el cual se graficarán
ezplot(y, [-10 10])

%Integrar funciones

int(y)

%Resolver ecuaciones lineales y no lineales

syms x 

respuesta = solve(x^2+3-x) %La ecuación deberá ser igualada a cero

%Como la respuesta es un símbolo, la cambiamos a un número

respuesta = double(respuesta)

%Sistema de ecuaciones no lineales

syms x y z
[x, y, z] = solve(x+y-5,...
                  x-y+1,...
                  exp(x*z)-7.389)
              












