Funcion n <- carta (num, palo)
	Definir snum, spalo como Texto;
	
	Segun num Hacer
		1: snum="A";
		2: snum="2";
		3: snum="3";
		4: snum="4";
		5: snum="5";
		6: snum="6";
		7: snum="7";
		8: snum="8";
		9: snum="9";
		10: snum="10";
		11: snum="J";
		12: snum="Q";
		13: snum="K";
	Fin Segun
	
	Segun palo Hacer
		0: spalo="treboles";
		1: spalo="corazones";
		2: spalo="diamantes";
		3: spalo="picas";
	Fin Segun
	
	Escribir snum," de ",spalo;
Fin Funcion


Funcion n <- fcartera(balance,contador)
	Escribir " BALANCE: ",balance,"€";
	Escribir " NÚMERO DE APUESTAS: ",contador;
	Escribir "+---------------------------------+";
Fin Funcion


Funcion n <- fseguir(check)
	Definir seguir como texto;
	Escribir "";
	Escribir sin saltar "¿Quieres sacar otra carta? (S/N)";
	Leer seguir;
	seguir<-Minusculas(seguir);
	
	Si seguir="n"  Entonces
		check=Falso;
	Fin Si
	
	Si seguir!="s"  Entonces
		Limpiar Pantalla;
		Escribir "[ CONFIRMA PARA SALIR ]";
		Escribir sin saltar "¿Quieres sacar otra carta? (S/N)";
		Leer seguir;
	Fin Si
Fin Funcion




Algoritmo sacar_carta
	Definir num1, palo1, num2, palo2, carta1, carta2, balance, apostado,cartera,contador como Entero;
	Definir snum, spalo, seguir,m como Texto;
	Definir check Como Logico;
	

	check=Verdadero;
	contador=0;
	balance=500;
	
	
	Repetir
	Limpiar Pantalla;

	cartera<-fcartera(balance,contador);
	
	
	num1<-azar(13)+1;
	palo1<-azar(3);
	carta1<- carta(num1,palo1);
	Escribir "";
	Escribir "-----------------------------------";
	
	
	Escribir Sin Saltar "¿La proxima carta será mayor o menor?";
	Leer m;
	m<-Minusculas(m);
	
	Si (m!="mayor") && (m!="menor") Entonces
		Limpiar Pantalla;
		carta1<- carta(num1,palo1);
		Escribir "-----------------------------------";
		Mientras (m!="mayor") && (m!="menor") Hacer
		Escribir "[ DEBES INTRODUCIR UNA OPCIÓN VÁLIDA ]";
		Escribir Sin Saltar "¿La proxima carta será mayor o menor?";
		Leer m;
		Escribir "";
		Fin Mientras
	Fin Si
	
	
	Escribir Sin Saltar "¿Cuanto quieres apostar?";
	Leer apostado;
	
	Si apostado>balance Entonces
		Mientras apostado>balance Hacer
		Escribir "";
		Escribir "[ EL VALOR APOSTADO NO PUEDE SER VAYOR AL BALANCE ]";
		Escribir Sin Saltar "¿Cuanto quieres apostar?";
		apostado=0;
		Leer apostado;
		Fin Mientras
	Fin Si
	
	Si apostado<50 Entonces
		Mientras apostado<50 Hacer
		Escribir "";
		Escribir "[ EL MÍNIMO DE APUESTA ES 50 ]";
		Escribir Sin Saltar "¿Cuanto quieres apostar?";
		apostado=0;
		Leer apostado;
		Fin Mientras
	Fin Si
	
	balance=balance-apostado;
	
	
	
	num2<-azar(13)+1;
	palo2<-azar(3);
	contador=contador+1;
	
	Limpiar Pantalla;
	Escribir Sin Saltar "Carta anterior: ",carta(num1,palo1);
	Escribir Sin Saltar "Ha salido: ",carta(num2,palo2);
	Escribir "-----------------------------------";
	Escribir "Apostado: ", m;
	Escribir "Cantidad Apostada: ", apostado,"€";
	Escribir "-----------------------------------";
	
	Si m="mayor" Entonces
		Si num1<num2 Entonces
			Escribir "[ HAS GANADO ",apostado,"€ ]";
			balance=balance+(apostado*2);
		SiNo
			Escribir "[ HAS PERDIDO ",apostado,"€ ]";
		FinSi
	SiNo
		Si num1>num2 Entonces
			Escribir "[ HAS GANADO ",apostado,"€ ]";
			balance=balance+(apostado*2);
		SiNo
			Escribir "[ HAS PERDIDO ",apostado,"€ ]";
		FinSi
	Fin Si
	
	seguir<-fseguir(check);
	
	Si balance==0 Entonces
		check=falso;
	FinSi
	
	Hasta Que check==Falso;

	Si balance==0 Entonces
		Limpiar Pantalla;
		Escribir "[ TE HAS QUEDAO SIN UN DURO ]";
	FinSi

FinAlgoritmo
