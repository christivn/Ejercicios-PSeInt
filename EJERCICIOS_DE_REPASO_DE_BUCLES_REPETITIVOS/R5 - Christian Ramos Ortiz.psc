Algoritmo Diagrama
	
	Definir n,i,contador como real;
	contador=0;
	Para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir "Introduce un número:";
		Leer n;
		Escribir "--------------------------------";
		
		Si n%2=0 Entonces
			contador=contador+1;
		Fin Si
	Fin Para
	
	Escribir "Números pares: ",contador;
	Escribir "Números impares: ",5-contador;
	
FinAlgoritmo
