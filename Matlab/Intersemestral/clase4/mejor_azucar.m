%En un restaurante preparan agua de limón, para que la receta sea
%"PERFECTA", al agua se le debe agregar 500 gramos de azucar.
%Los que preparan el agua, casi nunca pesan la cantidad de azucar a la hora
%de preparar el agua, así que el chef decide emplear un método poka-yoke (a
%prueba de errores) y decide comprar bultos de azucar de 500 gramos para
%que los empleados simplemente vacíen un bulto de azucar con la cantidad
%exacta.

%Se realizan mediciones de bultos de azucar de dos compañias, para ver cual
%es la está mejor empacada, con la cantidad más cercana a los 500 gramos

%Datos (Se pesaron 40 bolsas)

%Compañía A
A = [503 507 492 499 498 506 502 ...
     502 506 502 505 493 500 489 ... 
     500 492 500 515 510 502 508 ...
     499 510 494 503 499 508 513 ...
     502 515 514 507 510 498 507 ...
     491 507 502 484 500]
 
 %Compañía B
 B = [505 492 502 499 496 499 496 ...
      495 498 501 504 501 498 498 ...
      499 495 501 500 497 495 500 ...
      491 493 507 496 492 499 492 ...
      501 500 497 500 498 496 494 ...
      497 504 496 500 499]
  
  %Para elegir a la mejor compañía, podemos elegir a la que tenga el
  %promedio más cercano al valor que queremos
  media_A = mean(A)
  media_B = mean(B)
  
  %Otra forma, es elegir al que tenga la mediana más cercana al valor
  %deseado
  median(A)
  median(B)
  
  %Podemos utilizar otra medida de tendencia central, la cual es la moda
  
  mode(A)
  mode(B)
  
  %Con las medidas de tendencia cetral (media, moda y mediana), no se puede
  %tomar una desición, ya que, los valores son muy parecidos y muy cercanos
  %a los valores deseados.
  
  %Podemos hacer un segundo análisis de los datos, para ver como varían
  %estos datos y tomar una desición más acertada
  
  %La desviación estandar nos indica que tan esparcidos están los datos
  %respecto a la media
  %Cuanto más grande sea el valor de la desviación estandar, mayor
  %variabilidad habrá entre ellos
  
  desv_A = std(A)
  desv_B = std(B)
  
  %La compañia B presenta menor variación en sus empacados de azucar
  
  %Regla empírica
  %Indica que el 99% de los datos están entre ciertos valores a calcular
  %
  %     Valor_1 = media - 3 * desviación_estandar
  %
  %     Valor_2 = media + 3 * desviación_estandar
  %
  
  %Compañía A
  
  val_1_A = media_A - 3 * desv_A
  val_2_A = media_A + 3 * desv_A
  
  %Compañía B
  
  val_1_B = media_B - 3 * desv_B
  val_2_B = media_B + 3 * desv_B
  
  %Como se puede observar la mejor compañía es la B, porque sus
  %empaquetados varían menos, y el 99% de sus costales se encuentran en un
  %rango más cercano a los 500 gramos
  
  hist(A) %Histograma de datos
  
  %IR AL CÓDIGO mejor_azucar_excel.m
  
  