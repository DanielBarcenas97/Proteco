%Para resolver ecuaciones y hacer distintas operaciones matem�ticas podemos
%utilizar los s�mbolos

%Creando un s�mbolo

x = sym('x')



%Creando varios s�mbolos

syms a b c d

%L�s s�mbolos puedes ser expresiones 
cociente = (a - b)/(c + d)

%Las expresiones simb�licas las podemos "poner bonitas"

pretty(cociente)

%Podemos expresar todo un polinomio en t�rminos de una variable

syms x y

collect(x^2*y + y*x - x^2 - 2*x, x)
collect(x^2*y + y*x - x^2 - 2*x, y)

%Podemos desarrollar una expresi�n matem�tica

syms x y

expand((x - 2)*(x - 4))
expand((cos(x + y)))

%Podemos reducir una expresi�n

syms x

simplify((x^2 + 2*x - 1)*8*x)

%Derivar una funci�n

syms x

y = sym(2*x^2)

derivada = diff(y) %El comando diff deriva
 
%Graficar una funci�n

%Recibe la funci�n y el rango en el cual se graficar�n
ezplot(y, [-10 10])

%Integrar funciones

int(y)

%Resolver ecuaciones lineales y no lineales

syms x 

respuesta = solve(x^2+3-x) %La ecuaci�n deber� ser igualada a cero

%Como la respuesta es un s�mbolo, la cambiamos a un n�mero

respuesta = double(respuesta)

%Sistema de ecuaciones no lineales

syms x y z
[x, y, z] = solve(x+y-5,...
                  x-y+1,...
                  exp(x*z)-7.389)
              












