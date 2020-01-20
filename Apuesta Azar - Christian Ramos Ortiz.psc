Funcion n <- fseguir
	Definir seguir como texto;
	Definir check como logico;
	
	Escribir "";
	Escribir Sin Saltar"¿Quieres seguir apostando (S/N)";
	Leer seguir;
	
	Si seguir=="S" || seguir=="s" Entonces
		check=verdadero;
	SiNo
		check=falso;
	Fin Si
Fin Funcion

Algoritmo sin_titulo
	Definir rand,balance,apuesta,apostado como real;
	Definir seguir, caracruz, sapostado como texto;
	Definir check como logico;
	balance<-0;
	apuesta<-0;
	check<-verdadero;
	
	Repetir
		Escribir Sin Saltar"¿Cuanto dinero quieres apostar para empezar? ";
		Leer balance;
		
		Si balance<=20 Entonces
			Escribir "[ LA CANTIDAD MÍNIMA SON 20€ ]";
			Escribir "";
		Fin Si
	Hasta Que balance>20
	
	Repetir
		Limpiar Pantalla;
		rand<-azar(2);
		
		Escribir "BALANCE TOTAL: ",balance," €";
		Escribir "+------------------------+";
		Escribir Sin Saltar"Cantidad a apostar ";
		Leer apuesta;
		Escribir Sin Saltar"Cara o cruz ";
		Leer caracruz;
		Segun Minusculas(caracruz) Hacer
			"cara":
				apostado=0;
				sapostado="CARA";
			"cruz":
				apostado=1;
				sapostado="CRUZ";
			De Otro Modo:
				Escribir "DEBES INTRODUCIR CARA O CRUZ";
		Fin Segun
		Limpiar Pantalla;
		
		
		Si balance==0 Entonces
			Escribir "BALANCE TOTAL: ",balance," €";
			Escribir "+------------------------+";
			Escribir "TE HAS QUEDADO SIN DINERO QUE APOSTAR";
		SiNo
			
		Si apuesta>balance Entonces
				Escribir "BALANCE TOTAL: ",balance," €";
				Escribir "+------------------------+";
				Escribir "LA APUESTA NO PUEDE SER MAYOR A TU BALANCE";
				apuesta=0;
		SiNo
				
		Si apuesta<20 Entonces
					Escribir "BALANCE TOTAL: ",balance," €";
					Escribir "+------------------------+";
					Escribir "EL MÍNIMO DE APUESTA SON 20€";
					apuesta=0;
		SiNo


			balance=balance-apuesta;
			
			Si rand==apostado Entonces
				balance=balance+(apuesta*2);
				Escribir "BALANCE TOTAL: ",balance," €";
				Escribir "+------------------------+";
				Escribir "HA SALIDO ",sapostado;
				Escribir "[ HAS GANADO ]";
				apuesta=0;
			SiNo
				Escribir "BALANCE TOTAL: ",balance," €";
				Escribir "+------------------------+";
				Escribir "NO HA SALIDO ",sapostado;
				Escribir "[ HAS PERDIDO ]";
				apuesta=0;
			Fin Si
		
		Fin Si
		Fin Si
			seguir<-fseguir;
		Fin Si
		

	Hasta Que balance=0 ||check=falso;

FinAlgoritmo
