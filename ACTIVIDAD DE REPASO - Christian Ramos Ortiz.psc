Algoritmo Diagrama
	Definir check como Texto;
	Definir n1,n2,menu,i como real;
	check<-"S";
	
	Repetir
		Limpiar Pantalla;
		Escribir "Introduce el primer n�mero:";
		Leer n1;
		Escribir "Introduce el segundo n�mero:";
		Leer n2;
		Limpiar Pantalla;
		
		Escribir "<[ M E N U ]>";
		Escribir "1) Indicar la suma de los dos n�meros";
		Escribir "2) Averiguar cuantos son pares";
		Escribir "3) Muestra la multiplicaci�n";
		Escribir "4) Muestra una serie num�rica";
		Leer menu;
		Escribir "-------------------------------------";
	
		Segun menu Hacer
			1:
				Escribir "La suma de los n�meros es: ",n1,"+",n2,"=",n1+n2;
			2:
				Si n1%2=0 Entonces
					Escribir "El primer n�mero (",n1,") es par";
					
				Si n2%2=0 Entonces
						Escribir "El segundo n�mero (",n2,") es par";
					SiNo
						Escribir "ninguno de los n�meros introducidos es par";
					FinSi
				Fin Si
			3:
				Escribir "La multiplicaci�n de los n�meros es: ",n1,"*",n2,"=",n1*n2;
			4:
				Para i<-1 Hasta 15 Con Paso 1 Hacer
					Escribir (n1+n2)*i;
				Fin Para
			De Otro Modo:
				Escribir "Debes introducir una opci�n de men� valida";
		Fin Segun
		
		Escribir "-------------------------------------";
		Escribir "�Quieres vovler a ejecutar de nuevo? (S/N)";
		Leer check;
		
	Hasta Que check="N"
	
FinAlgoritmo

