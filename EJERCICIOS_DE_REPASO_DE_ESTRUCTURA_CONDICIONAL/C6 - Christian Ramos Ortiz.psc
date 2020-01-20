Algoritmo Diagrama
	Definir sueldo,años como real;
	Escribir "Sueldo:";
	Leer sueldo;
	Escribir "Años de antiguedad:";
	Leer años;
	Escribir "--------------------------------";
	Escribir "";
	
	Si sueldo<500 && años>=10 Entonces
		Escribir "Le corresponde un sueldo con un aumento del 20%";
		Escribir "Total sueldo: ",sueldo+(sueldo*20/100);
	SiNo
		Si sueldo<500 && años<10 Entonces
			Escribir "Le corresponde un sueldo con un aumento del 5%";
			Escribir "Total sueldo: ",sueldo+(sueldo*5/100);
		SiNo
			Escribir "No le corresponde ningún aumento de sueldo";
			Escribir "Total sueldo: ",sueldo;
		Fin Si
	Fin Si
	
FinAlgoritmo
