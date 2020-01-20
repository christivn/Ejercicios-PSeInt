Algoritmo Diagrama
	Definir lvl como real;
	Definir nombre como texto;
	Escribir "Introduce tu nombre:";
	Leer nombre;
	Escribir "Nivel de ingles (del 1 al 10):";
	Leer lvl;
	Escribir "--------------------------------";
	Escribir "";
	
	Si lvl>=7 Entonces
		Escribir nombre," tiene Nivel Alto";
	SiNo
		Si lvl>=4 Entonces
			Escribir nombre," tiene Nivel Medio";
		SiNo
			Escribir nombre," tiene Nivel Bajo";
		Fin Si
	Fin Si
	
FinAlgoritmo
