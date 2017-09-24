################# Ejecucion de la prompt ##################
PATH_GUARDADO=$PATH;
PATH="$PWD:$PATH";
#echo $PATH;
prompt=$USUARIO"->"$PWD" \xe2\x98\xa2  ";
prompt=$(ft -va "$prompt");
echo -n -e "$prompt";
read comando;

while [  "$comando" != "salir" ]; do
	#echo $comando
	claves=$(seprar "$comando");
	#echo "claves "$claves;
	numClaves=0;
	
	# Separacion y conteo de claves
	for i in $claves
	do
		clave[$numClaves]=$i;
		let numClaves=$numClaves+1;
		#echo $clave;
	done
PATH=$PATH_GUARDADO;
