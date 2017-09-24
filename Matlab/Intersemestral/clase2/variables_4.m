%Variables

%Una variable es el nombre que se le da a una entidad numérica, puede ser
%una matriz, un vector, un escalar.
%Cualquier objeto que ocupe espacio de memoria puede tener asignado un
%nombre para acceder a él.

%Expresión

%Una expresión es una línea de código en la cual se realizan operaciones y
%procesos

%En una expresión se puede asignar el resultado a una variable

y = 5*4 +6

%O simplemente se puede realizar la expresión sin guardarla en una variable
%Recordemos que el resultado de la expresión se guardará por defecto en la
%variable ans

5*4 + 6

%Una expresión termina cuando se presiona la tecla enter

%Si queremos continuar una expresión en la siguiente línea, podemos
%utilizar los tres puntos (...)

a = [1 2 3 4 5 6 ...
    7 8 9 10]

b = 1 + 2 + 3 + ...
    4 + 5 + 6

%Los nombres de las variables son Case Sensitive, los que significa que
%distingue entre mayúsculas y minusculas

VAR = 8
var = 16

%NO podemos crear variables con los nombres de las palabras clave

iskeyword %Muestra todas las palabras clave

%No es recomendable utilizar el mismo nombre de una variable, para una
%función, para saber si una variable o una función ya existe utilizaremos
%el comando exist

exist c %0 para falso
exist clear %Diferente de cero para verdadero
exist a

%Con help exist podemos tener una lista de todos los valores que devuelve
%el comando exist

help exist