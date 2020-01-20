Algoritmo Diagrama
	Definir n1,n2,contador como real;
	Escribir "Introduce el primer número:";
	Leer n1;
	Escribir "Introduce el segundo número:";
	Leer n2;
	Escribir "--------------------------------";
	Escribir "";
	
	Si n1>0 Entonces
		contador=1;
	Fin Si
	
	Si n2>0 Entonces
		contador=contador+1;
	Fin Si
	
	Si contador=2 Entonces
		Escribir "Hay 2 número positivo";
	SiNo
		Si contador=1 Entonces
			Escribir "Hay 1 número positivo";
		SiNo
			Escribir "No hay ningún número positivo";
		Fin Si
	Fin Si
	
FinAlgoritmo
