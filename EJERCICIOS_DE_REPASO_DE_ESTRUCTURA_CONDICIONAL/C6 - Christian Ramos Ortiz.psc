Algoritmo Diagrama
	Definir sueldo,a�os como real;
	Escribir "Sueldo:";
	Leer sueldo;
	Escribir "A�os de antiguedad:";
	Leer a�os;
	Escribir "--------------------------------";
	Escribir "";
	
	Si sueldo<500 && a�os>=10 Entonces
		Escribir "Le corresponde un sueldo con un aumento del 20%";
		Escribir "Total sueldo: ",sueldo+(sueldo*20/100);
	SiNo
		Si sueldo<500 && a�os<10 Entonces
			Escribir "Le corresponde un sueldo con un aumento del 5%";
			Escribir "Total sueldo: ",sueldo+(sueldo*5/100);
		SiNo
			Escribir "No le corresponde ning�n aumento de sueldo";
			Escribir "Total sueldo: ",sueldo;
		Fin Si
	Fin Si
	
FinAlgoritmo
