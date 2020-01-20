Funcion n <- menup
	Definir n1,n2,i,menu como real;
	Limpiar Pantalla;
	Escribir "Introduce el primer número:";
	Leer n1;
	Escribir "Introduce el segundo número:";
	Leer n2;
	Limpiar Pantalla;
	
	Escribir "<[ M E N U ]>";
	Escribir "1) Indicar la suma de los dos números";
	Escribir "2) Averiguar cuantos son pares";
	Escribir "3) Muestra la multiplicación";
	Escribir "4) Muestra una serie numérica";
	Leer menu;
	Escribir "-------------------------------------";
	
	Segun menu Hacer
		1:
			Escribir suma(n1,n2);
		2:
			Escribir pares(n1,n2);
		3:
			Escribir mul(n1,n2);
		4:
			Escribir serie(n1,n2,i);
		De Otro Modo:
			Escribir "Debes introducir una opción de menú valida";
	Fin Segun
Fin Funcion

Funcion n <- suma (n1, n2)
	Escribir "La suma de los números es: ",n1,"+",n2,"= ",n1+n2;
Fin Funcion

Funcion n <- pares (n1, n2)
	Si n1%2=0 Entonces
		Escribir "El primer número (",n1,") es par";
		
		Si n2%2=0 Entonces
			Escribir "El segundo número (",n2,") es par";
		SiNo
			Escribir "ninguno de los números introducidos es par";
		FinSi
	Fin Si
Fin Funcion

Funcion n <- mul (n1, n2)
	Escribir "La multiplicación de los números es: ",n1,"*",n2,"= ",n1*n2;
Fin Funcion

Funcion n <- serie (n1, n2, i)
	Para i<-1 Hasta 15 Con Paso 1 Hacer
		Escribir (n1+n2)*i;
	Fin Para
Fin Funcion

Funcion n <- frepetir
	Definir check como Texto;
	Definir menu como real;
	check<-"S";
	
	Repetir
		menu<-menup;
		
		Escribir "-------------------------------------";
		Escribir "¿Quieres vovler a ejecutar de nuevo? (S/N)";
		Leer check;
		
	Hasta Que check="N" || check="n"
Fin Funcion



Algoritmo Diagrama
	Definir rep como real;
	rep<-frepetir;
FinAlgoritmo

