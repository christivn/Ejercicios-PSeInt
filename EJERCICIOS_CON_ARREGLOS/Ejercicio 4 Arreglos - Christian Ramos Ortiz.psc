Algoritmo Ejercicio_4
	Definir num, vector01, vector02, i como numero;
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
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Escribir "x",(i+1),"+y",(i+1),"= ",vector01[i]+vector02[i];
	Fin Para

FinAlgoritmo
