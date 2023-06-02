#!/bin/bash
declare -i ultimo_intento=0

echo "Bienvenidos este juego interactivo de preguntas sobre la sintesis de proteinas"
echo
echo "¿Qué encima es la encargada de realizar el pasaje de ADN a ARN?"
echo
while true; do
  read -p "Ingrese su respuesta: " respuesta
  if [ "${respuesta^^}" == "POLIMERASA" ]; then
    	echo
    	echo "¡Muy bien! La ARN polimerasa es atraída químicamente hacia algunos sectores"
    	echo "especificos de una secuencia de ADN. Estos sectores son conocidos como promotores."
    	echo
    	ultimo_intento=0
    	break
  else
    if [ "$ultimo_intento" -eq 1 ]; then
  	echo "Lo sentimos, ya respondiste mal a la pregunta dos veces."
  	sleep 5
  	exit 0
    fi
    echo "Incorrecto, inténtalo nuevamente."
    echo
    ultimo_intento=1
  fi
done
echo "¿Qué acción realiza la POLIMERASA ARN? ¿Traducción o Transcripción?"
echo "Esta pregunta solo puede ser respondida una única vez, piénsalo bien."
echo
while true; do
  read -p "Ingrese su respuesta: " respuesta
  if [ "${respuesta^^}" == "TRANSCRIPCIÓN" ]; then
    	echo
    	echo "¡Muy bien! La transcripción es el proceso mediante el cual se sintetiza una molécula de ARN"
    	echo "a partir de una secuencia de ADN. Esta etapa ocurre en el núcleo de las células eucariotas y"
    	echo "en el citoplasma de las células procariotas."
    	echo
    	break
  else
	echo "Lo sentimos, la respuesta ingresada es incorrecta."
	sleep 5
	exit 0
  fi
done
echo "En el complejo de proteínas Spliceosoma se lleva adelante un proceso de"
echo "eliminación de intrones y unión de exones. ¿Qué son estos dos elementos?"
echo
sleep 2
echo "A - Son secuencias no codificantes y codificantes."
sleep 2
echo "B - Son proteínas encargadas de llevar al ARN mensajero."
sleep 2
echo "C - Todas son correctas."
echo
while true; do
  read -p "Ingrese su respuesta: " respuesta
  if [ "${respuesta^^}" == "A" ]; then
    	echo
    	echo "¡Muy bien! Los intrones son secuencias no codificantes y los exones son secuencias"
    	echo "codificantes. Como resultado de este proceso se obtiene un ARN mensajero maduro."
    	echo
    	ultimo_intento=0
    	break
  else
    if [ "$ultimo_intento" -eq 1 ]; then
  	echo
  	echo "Lo sentimos, ya respondiste mal a la pregunta dos veces."
  	sleep 5
  	exit 0
    fi
    echo
    echo "Incorrecto, inténtalo nuevamente."
    echo
    ultimo_intento=1
  fi
done
echo "¿Hacia dónde se dirige en ARN mensajero maduro cuando sale del núcleo?"
echo
while true; do
  read -p "Ingrese su respuesta: " respuesta
  if [ "${respuesta^^}" == "CITOPLASMA" ]; then
    	echo
    	echo "¡Muy bien! el ARN mensajero se exporta a traves de poros nucleares hacia el citoplasma."
    	echo
    	ultimo_intento=0
    	break
  else
    if [ "$ultimo_intento" -eq 1 ]; then
  	echo
  	echo "Lo sentimos, ya respondiste mal a la pregunta dos veces."
  	sleep 5
  	exit 0
    fi
    echo
    echo "Incorrecto, inténtalo nuevamente."
    echo
    ultimo_intento=1
  fi
done
echo "¿Quien se encarga de leer y traducir el codigo presente en el ARN mensajero con"
echo "el fin de generar una caden de aminoacios?"
echo
while true; do
  read -p "Ingrese su respuesta: " respuesta
  if [ "${respuesta^^}" == "RIBOSOMAS" ]; then
    	echo
    	echo "¡Muy bien! Los ribosomas son los encargados de la sintesis de proteinas."
    	echo "Cuando se lee un codon, el ARN de transferencia entrega el aminoacido correspondiente."
    	echo
    	ultimo_intento=0
    	break
  else
    if [ "$ultimo_intento" -eq 1 ]; then
  	echo
  	echo "Lo sentimos, ya respondiste mal a la pregunta dos veces."
  	sleep 5
  	exit 0
    fi
    echo
    echo "Incorrecto, inténtalo nuevamente."
    echo
    ultimo_intento=1
  fi
done
echo "¿Cómo se llama el proceso previo?"
echo
sleep 2
echo "A - Traducción"
sleep 2
echo "B - Transcripción"
sleep 2
echo "C - Ninguna es correcta"
while true; do
  read -p "Ingrese su respuesta: " respuesta
  if [ "${respuesta^^}" == "A" ]; then
    	echo
    	echo "¡Muy bien! La traducción es el proceso en el cual la información genética contenida"
    	echo "en el ARN mensajero (ARNm) se utiliza para sintetizar una cadena polipeptídica, es decir,"
    	echo "una proteína. entrega el aminoacido correspondiente."
    	echo
    	ultimo_intento=0
    	break
  else
    if [ "$ultimo_intento" -eq 1 ]; then
  	echo
  	echo "Lo sentimos, ya respondiste mal a la pregunta dos veces."
  	sleep 5
  	exit 0
    fi
    echo
    echo "Incorrecto, inténtalo nuevamente."
    echo
    ultimo_intento=1
  fi
done
echo "Felicitaciones, respondiste correctamente las preguntas."
read -n 1 -s -r -p "Presiona cualquier tecla para salir..."