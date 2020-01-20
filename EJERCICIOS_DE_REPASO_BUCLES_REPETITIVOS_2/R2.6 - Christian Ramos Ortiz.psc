Algoritmo Diagrama
	
	Definir n1,n2 como real;
	Repetir
		Escribir "Introduce el primer número:";
		Leer n1;
		Escribir "Introduce el segundo número:";
		Leer n2;
		
		Si n2=0 Entonces
			Limpiar Pantalla;
			Escribir "[ No se puede dividir entre cero ]";
		SiNo
			Escribir "La división de los números es igual a: ",n1/n2;
		Fin Si
		
	Hasta Que n2!=0
	
FinAlgoritmo

