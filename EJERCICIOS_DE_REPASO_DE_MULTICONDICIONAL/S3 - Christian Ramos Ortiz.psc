Algoritmo Diagrama
	Definir n como real;
	Definir x como texto;
	
	Repetir
		Escribir "Introduce un n�mero (del 1 al 7):";
		Leer n;
		Escribir "-----------------------------------";
		
		Segun n Hacer
			1:
				Escribir "El d�a ",n," corresponde al Lunes";
			2:
				Escribir "El d�a ",n," corresponde al Martes";
			3:
				Escribir "El d�a ",n," corresponde al Miercoles";
			4:
				Escribir "El d�a ",n," corresponde al Jueves";
			5:
				Escribir "El d�a ",n," corresponde al Viernes";
			6:
				Escribir "El d�a ",n," corresponde al Sabado";
			7:
				Escribir "El d�a ",n," corresponde al Domingo";
			De Otro Modo:
				Escribir "Debes introducir un n�mero del 1 al 7";
		Fin Segun
		
		Escribir "�Quieres volver a introducir otro n�mero? (S/N)";
		Leer x;
		Limpiar Pantalla;
	Hasta Que x="N" || x="n"
	
FinAlgoritmo

