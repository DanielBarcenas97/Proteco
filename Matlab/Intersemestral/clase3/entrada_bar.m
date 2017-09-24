%Programa que permite la entrada de una persona a un bar según ciertos
%requisitos

edad = input('Ingresa tu edad: ');
ife = logical(input('Tienes ife? (1:si, 0:no): '));

%Si no tienes curp
if(~ife)
    curp = input('Tienes curp? (1:si, 0:no): ');
end

%Debes tener 18 años o más y tienes que tener tu ife o tu curp 
if(edad >= 18 & (ife | curp))
    display('Bienvenido')
else
    display('-No puedes pasar')
end