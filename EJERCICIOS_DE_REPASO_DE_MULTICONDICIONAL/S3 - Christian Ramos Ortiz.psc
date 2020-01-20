Algoritmo Diagrama
	Definir n como real;
	Definir x como texto;
	
	Repetir
		Escribir "Introduce un número (del 1 al 7):";
		Leer n;
		Escribir "-----------------------------------";
		
		Segun n Hacer
			1:
				Escribir "El día ",n," corresponde al Lunes";
			2:
				Escribir "El día ",n," corresponde al Martes";
			3:
				Escribir "El día ",n," corresponde al Miercoles";
			4:
				Escribir "El día ",n," corresponde al Jueves";
			5:
				Escribir "El día ",n," corresponde al Viernes";
			6:
				Escribir "El día ",n," corresponde al Sabado";
			7:
				Escribir "El día ",n," corresponde al Domingo";
			De Otro Modo:
				Escribir "Debes introducir un número del 1 al 7";
		Fin Segun
		
		Escribir "¿Quieres volver a introducir otro número? (S/N)";
		Leer x;
		Limpiar Pantalla;
	Hasta Que x="N" || x="n"
	
FinAlgoritmo

