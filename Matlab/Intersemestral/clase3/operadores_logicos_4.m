%Operadores lógicos
% 
% AND &
% 
%     0   1
% 
% 0   0   0
% 
% 1   0   1
% 
% El resultado será verdadero si los dos operandos son verdaderos
% 
% OR |
% 
%     0   1
%     
%  0  0   1
%  
%  1  1   1
%  
% El resultado será falso si los dos operandos son falsos
% 
% NOT ~
% 
% Cambia de FALSO a VERDADERO y de VERDADERO a FALSO

%AND

3 > 2 & 2 > 1 %Ambos son verdaderos, regresa verdadero
3 > 2 & 2 > 4 %Hay una comparación falsa, el resultado es falso

%OR

15 < 16 | 16 < 11 %Hay un verdadero, regresa verdadero
18 < 16 | 16 < 11 %Los dos son falsos, regresa falso

%IR A CÓDIGO entrada_bar.m
