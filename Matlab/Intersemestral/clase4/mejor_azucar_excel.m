%Posicionarse en la carpeta donde está el archivo en excel
%Para poder leer los datos

A = xlsread('datos_mejor_azucar_excel.xlsx', 1)' 

%Guarda en el vector A todos los datos del archivo:
%datos_mejor_azucar_excel.xlsx
%De la hoja 1

%Como en excel venían en columna, se transpuso el vector para guardarlo
%como vector fila

B = xlsread('datos_mejor_azucar_excel.xlsx', 2)'

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