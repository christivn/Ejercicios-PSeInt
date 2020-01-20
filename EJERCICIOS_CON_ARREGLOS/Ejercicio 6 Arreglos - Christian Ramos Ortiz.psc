Algoritmo Ejercicio_6
	Definir num, vector, i, max como numero;
	Dimension vector[7];
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Escribir Sin Saltar "Introduce un número entero (",(i+1),"/7) ";
		Leer num;
		vector[i]=num;
	Fin Para
	Escribir "";
	Escribir "-------------------------------------------";
	
	max=0;
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Si vector[i]>=vector[max] Entonces
			vector[max]=vector[i];
		Fin Si
	Fin Para
	
	Escribir "El número mayor es: ",vector[max];
FinAlgoritmo
