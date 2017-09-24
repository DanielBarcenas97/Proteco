%En un restaurante preparan agua de lim�n, para que la receta sea
%"PERFECTA", al agua se le debe agregar 500 gramos de azucar.
%Los que preparan el agua, casi nunca pesan la cantidad de azucar a la hora
%de preparar el agua, as� que el chef decide emplear un m�todo poka-yoke (a
%prueba de errores) y decide comprar bultos de azucar de 500 gramos para
%que los empleados simplemente vac�en un bulto de azucar con la cantidad
%exacta.

%Se realizan mediciones de bultos de azucar de dos compa�ias, para ver cual
%es la est� mejor empacada, con la cantidad m�s cercana a los 500 gramos

%Datos (Se pesaron 40 bolsas)

%Compa��a A
A = [503 507 492 499 498 506 502 ...
     502 506 502 505 493 500 489 ... 
     500 492 500 515 510 502 508 ...
     499 510 494 503 499 508 513 ...
     502 515 514 507 510 498 507 ...
     491 507 502 484 500]
 
 %Compa��a B
 B = [505 492 502 499 496 499 496 ...
      495 498 501 504 501 498 498 ...
      499 495 501 500 497 495 500 ...
      491 493 507 496 492 499 492 ...
      501 500 497 500 498 496 494 ...
      497 504 496 500 499]
  
  %Para elegir a la mejor compa��a, podemos elegir a la que tenga el
  %promedio m�s cercano al valor que queremos
  media_A = mean(A)
  media_B = mean(B)
  
  %Otra forma, es elegir al que tenga la mediana m�s cercana al valor
  %deseado
  median(A)
  median(B)
  
  %Podemos utilizar otra medida de tendencia central, la cual es la moda
  
  mode(A)
  mode(B)
  
  %Con las medidas de tendencia cetral (media, moda y mediana), no se puede
  %tomar una desici�n, ya que, los valores son muy parecidos y muy cercanos
  %a los valores deseados.
  
  %Podemos hacer un segundo an�lisis de los datos, para ver como var�an
  %estos datos y tomar una desici�n m�s acertada
  
  %La desviaci�n estandar nos indica que tan esparcidos est�n los datos
  %respecto a la media
  %Cuanto m�s grande sea el valor de la desviaci�n estandar, mayor
  %variabilidad habr� entre ellos
  
  desv_A = std(A)
  desv_B = std(B)
  
  %La compa�ia B presenta menor variaci�n en sus empacados de azucar
  
  %Regla emp�rica
  %Indica que el 99% de los datos est�n entre ciertos valores a calcular
  %
  %     Valor_1 = media - 3 * desviaci�n_estandar
  %
  %     Valor_2 = media + 3 * desviaci�n_estandar
  %
  
  %Compa��a A
  
  val_1_A = media_A - 3 * desv_A
  val_2_A = media_A + 3 * desv_A
  
  %Compa��a B
  
  val_1_B = media_B - 3 * desv_B
  val_2_B = media_B + 3 * desv_B
  
  %Como se puede observar la mejor compa��a es la B, porque sus
  %empaquetados var�an menos, y el 99% de sus costales se encuentran en un
  %rango m�s cercano a los 500 gramos
  
  hist(A) %Histograma de datos
  
  %IR AL C�DIGO mejor_azucar_excel.m
  
  