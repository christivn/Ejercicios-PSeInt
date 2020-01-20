Algoritmo Ejercicio_3
	Definir num, n, i, suma como numero;
	Dimension n[5];
	i=0;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar "Introduce un número (",(i+1),"/5)";
		Leer num;
		n[i]=num;
	Fin Para
	
	Escribir "--------------------------------------------";
	
	suma=0;
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		suma=suma+n[i];
	Fin Para
	
	Escribir "La media es igual a: ",(suma/5);
	Escribir Sin Saltar "Valores mayores a la media: ";
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Si n[i]>(suma/5) Entonces
			Escribir Sin Saltar n[i]," ";
		Fin Si
	Fin Para
	Escribir "";
	
FinAlgoritmo
