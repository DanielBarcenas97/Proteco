%Programa que cambia las calificaciones menores a 6 por el número 5
%Para que cumplan con el formato de entrega en el SIAE

calfs = [10 8 7 4 2 0 9 7 4 10]

repro = calfs < 6

calfs(repro) = 5

