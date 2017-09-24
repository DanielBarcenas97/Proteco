#!/bin/bash

trap ctrl_c INT;
	
function ctrl_c() 
{
	echo Se presiono ctrl-c >> err.txt;
}


############## Registro de Usuarios #############
clear;
echo -e " Se requiere ser usuario Root en todo momento
para la ejecucion de este programa."

read;

if [ $(whoami) != "root" ]; then
	echo -e "Lo sentimos, usted no es root";
	exit 1;
fi

echo -e "A continuaci\xc3\xb3n puedes ingresar con el usuario que prefieras"

echo -n "Usuario: "
read USUARIO;

echo -n -e "Contrase\xc3\xb1a: "
read -s CONTRA;

$USUARIO  $CONTRA	# Se inicia el proceso se ingreso y
USUARIO=$1;
CONTRA=$2;

id -u $USUARIO > /dev/null; 	# Comprobamos la existencia del usr
if [ $? -ne 0 ]; then	# Vemos si esta en la lista
        echo "Nombre de usuario no valido";
        exit 1;		
else
		## Si nuestro usuario es valido:
        export CONTRA;
        CONTRAVDRA=`grep -w "$USUARIO" /etc/shadow | cut -d: -f2`;
        export ALGOR=`echo $CONTRAVDRA | cut -d'$' -f2`;
        export SALT=`echo $CONTRAVDRA | cut -d'$' -f3`;
        GENCONTRA=$(perl -le 'print crypt("$ENV{CONTRA}","\$$ENV{ALGOR}\$$ENV{SALT}\$")');
        echo "";
	if [ "$GENCONTRA" == "$CONTRAVDRA" ]; then
                unset CONTRA;
		echo -e "Nombre de usuario y contrase\xc3\xb1a validos";
                exit 0;
        else
		unset CONTRA;
                echo -e "Contrase\xc3\xb1a invalida";
                exit 1;
        fi
fi

	if [ $? -eq 1 ]; then		# Si el ingreso no fue exitoso
		echo "El ingreso ha fallado";
		CONTRA="";
		exit 1;		#  se sale del programa con el valor FRACASO
	else
		echo -e "	Bienvenido(a) a la PrebeShell";
		echo -e "	Puedes sal\xc3\xadr en cualquier momento ingresando \"salir\"";
		echo "";
		CONTRA="";
	fi




