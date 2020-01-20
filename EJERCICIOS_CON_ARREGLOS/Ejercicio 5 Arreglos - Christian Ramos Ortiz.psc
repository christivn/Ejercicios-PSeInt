Algoritmo Ejercicio_5
	Definir num, vector01, vector02, i, total como numero;
	Dimension vector01[3];
	Dimension vector02[3];
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Escribir Sin Saltar "Introduce el valor de x",(i+1)," ";
		Leer num;
		vector01[i]=num;
	Fin Para
	Escribir "";
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Escribir Sin Saltar "Introduce el valor de y",(i+1)," ";
		Leer num;
		vector02[i]=num;
	Fin Para
	Escribir "-----------------------------------------";
	
	total=0;
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		total=total+(vector01[i]+vector02[i]);
		Si i=2 Entonces
			Escribir Sin Saltar "x",(i+1)," + y",(i+1), " = ",total;
		SiNo
			Escribir Sin Saltar "x",(i+1)," + y",(i+1), " + ";
		Fin Si
	Fin Para
	Escribir "";
	
FinAlgoritmo
