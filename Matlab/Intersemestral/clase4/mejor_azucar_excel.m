%Posicionarse en la carpeta donde est� el archivo en excel
%Para poder leer los datos

A = xlsread('datos_mejor_azucar_excel.xlsx', 1)' 

%Guarda en el vector A todos los datos del archivo:
%datos_mejor_azucar_excel.xlsx
%De la hoja 1

%Como en excel ven�an en columna, se transpuso el vector para guardarlo
%como vector fila

B = xlsread('datos_mejor_azucar_excel.xlsx', 2)'

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