Algoritmo piramide
	Definir i,x,altura como real;
	Definir c como texto;
	
	c<-"#";
	altura<-5;
	
	Para i<-0 Hasta altura Con Paso 1 Hacer
		
		Para x<-i Hasta altura Con Paso 1 Hacer
			Escribir Sin Saltar " ";
		Fin Para
		
		Para x<-1 Hasta i Con Paso 1 Hacer
			Si i!=0 Entonces
				Escribir Sin Saltar c;
			Fin Si
		Fin Para
		
		Para x<-0 Hasta altura+1 Con Paso 1 Hacer
			Si x>i Entonces
				Escribir Sin Saltar " ";
			SiNo
				Escribir Sin Saltar c;
			Fin Si
		Fin Para

		Escribir "";
	Fin Para
	
FinAlgoritmo
