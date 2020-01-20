Algoritmo Diagrama
	Definir num como real;
	Escribir "Introduce un número:";
	Leer num;
	Escribir "--------------------------------";
	Escribir "";
	
	Si num>0 Entonces
		Escribir "El número ",num," es positivo";
	SiNo
		Si num<0  Entonces
			Escribir "El número ",num," es negativo";
		SiNo
			Escribir "El número ",num," es cero";
		Fin Si
	Fin Si
	
	Escribir "";
	
FinAlgoritmo
