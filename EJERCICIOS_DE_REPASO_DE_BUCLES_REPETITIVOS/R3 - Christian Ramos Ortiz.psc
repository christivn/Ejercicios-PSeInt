Algoritmo Diagrama
	
	Definir n,i,contador como real;
	contador=0;
	Para i<-0 Hasta 10 Con Paso 1 Hacer
		Escribir "Introduce un número:";
		Leer n;
		Escribir "--------------------------------";
		
		Si n>=7 Entonces
			contador=contador+1;
		Fin Si
	Fin Para
	
	Escribir ">Notas mayores o iguales a 7: ",contador;
	Escribir ">Notas menores a 7: ",10-contador;
	
FinAlgoritmo
