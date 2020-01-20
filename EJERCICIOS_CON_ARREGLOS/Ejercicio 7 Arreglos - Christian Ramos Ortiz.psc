Algoritmo Ejercicio_6
	Definir num, vector, i, posicion, posiciones,cont como numero;
	Definir check como logico;
	
	Dimension posiciones[10];
	Dimension vector[10];
	vector[0]=1;
	vector[1]=10;
	vector[2]=5;
	vector[3]=1;
	vector[4]=2;
	vector[5]=5;
	vector[6]=5;
	vector[7]=9;
	vector[8]=7;
	vector[9]=3;
	
	Escribir Sin Saltar "Introduce el dato que quieres buscar (1 al 10)";
	Leer num;
	
	Escribir "-----------------------------------------------";
	
	check=falso;
	cont=0;
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Si num=vector[i] Entonces
			posicion=i;
			posiciones[cont]=i;
			
			check=verdadero;
			cont=cont+1;
		Fin Si
	Fin Para
	
	Si check Entonces
		Escribir Sin Saltar "Se ha encontrado el número ",num," en la posición ";
		Para i<-0 Hasta cont-1 Con Paso 1 Hacer
			Escribir Sin Saltar posiciones[i],", ";
		Fin Para
		Escribir "";
	SiNo
		Escribir "No se ha encontrado el número indicado";
	Fin Si
	
FinAlgoritmo
