Funcion snum <- caballo(num)
	Definir snum como texto;
	Segun num Hacer
		0: snum="Relampago";
		1: snum="Bandolero";
		2: snum="Lucky";
		3: snum="Valentin";
		4: snum="Obama";
		5: snum="Pistacho";
			
		6: snum="Manchas";
		7: snum="Polvora";
		8: snum="Alfalfa";
		9: snum="Spirit";
		10: snum="Furia";
		11: snum="Duero";
			
		12: snum="Sultan";
		13: snum="Crazy";
		14: snum="Caballo Loco";
		15: snum="Sombra";
		16: snum="Lazaro";
		17: snum="Alpha";
			
		18: snum="Caramelo";
		19: snum="Corvus";
		20: snum="Chocolate";
		21: snum="Flash";
		22: snum="Forastero";
		23: snum="Galileo";
	Fin Segun
Fin Funcion

Funcion num <- numcaballo(snum)
	Definir num como numero;
	Segun snum Hacer
		"Relampago": num=0;
		"Bandolero": num=1;
		"Lucky": num=2;
		"Valentin": num=3;
		"Obama": num=4;
		"Pistacho": num=5;
			
		"Manchas": num=6;
		"Polvora": num=7;
		"Alfalfa": num=8;
		"Spirit": num=9;
		"Furia": num=10;
		"Duero": num=11;
			
		"Sultan": num=12;
		"Crazy": num=13;
		"Caballo Loco": num=14;
		"Sombra": num=15;
		"Lazaro": num=16;
		"Alpha": num=17;
			
		"Caramelo": num=18;
		"Corvus": num=19;
		"Chocolate": num=20;
		"Flash": num=21;
		"Forastero": num=22;
		"Galileo": num=23;
	Fin Segun
Fin Funcion

Funcion n <- cartera(balance,ganadas)
	Escribir "[ BALANCE: ",balance,"€ ]     [ CARRERAS GANADAS: ",ganadas," ]";
Fin Funcion

Funcion n <- lista_caballos(caballo1, caballo2, caballo3, caballo4, caballo5, caballo6)
	Escribir "+-----------< CABALLOS >-------------+";
	Escribir "-",caballo(caballo1)," < Favorito";
	Escribir "-",caballo(caballo2);
	Escribir "-",caballo(caballo3);
	Escribir "-",caballo(caballo4);
	Escribir "-",caballo(caballo5);
	Escribir "-",caballo(caballo6);
Fin Funcion

Funcion n <- check_caballo(caballo_elegido)
	Definir n como logico;
	n<-Falso;
	Segun caballo_elegido Hacer
		"relampago": n<-Verdadero;
		"bandolero": n<-Verdadero;
		"lucky": n<-Verdadero;
		"valentin": n<-Verdadero;
		"obama": n<-Verdadero;
		"pistacho": n<-Verdadero;
			
		"manchas": n<-Verdadero;
		"polvora": n<-Verdadero;
		"alfalfa": n<-Verdadero;
		"spirit": n<-Verdadero;
		"furia": n<-Verdadero;
		"duero": n<-Verdadero;
			
		"sultan": n<-Verdadero;
		"crazy": n<-Verdadero;
		"caballo loco": n<-Verdadero;
		"sombra": n<-Verdadero;
		"lazaro": n<-Verdadero;
		"alpha": n<-Verdadero;
			
		"caramelo": n<-Verdadero;
		"corvus": n<-Verdadero;
		"chocolate": n<-Verdadero;
		"flash": n<-Verdadero;
		"forastero": n<-Verdadero;
		"galileo": n<-Verdadero;
	Fin Segun
Fin Funcion

Algoritmo carrera_caballos
	Definir num, i, b, carrera, cuota, cuota1, cuota2, cuota3, apuesta, balance, ganadas, ganador, cont, posibilidad_fav, contador, azarfav, numcaballos como numero;
	Definir fav, fav1, fav2, fav3, fav4, caballo_elegido, seguir como texto;
	Definir num1, num2, num3, num4 como numero;
	Definir posicion2, posicion3, posicion4, posicion5, posicion6, primerocont como numero;
	Definir check, checkcaballo, final, premio como logico;
	
	Definir caballo1, caballo2, caballo3, caballo4, caballo5, caballo6, numfav como numero;
	
	Definir posiciones como numero;
	Dimension posiciones[7];
	
	Definir listacaballos como numero;
	Dimension listacaballos[7];
	
	numcaballos=24;
	
	balance=500;
	ganadas=0;
	
	final=falso;
	Repetir
		Limpiar Pantalla;
		Escribir cartera(balance,ganadas);
		
		Escribir "+-----------< CARRERAS DE HOY >-------------+";
		Escribir "";
		
		num1<-azar(numcaballos);
		fav1<-caballo(num1);
		Escribir " Carrera(1) -  Favorito: ",fav1;
		
		Repetir
			num2<-azar(numcaballos);
			fav2<-caballo(num2);
		Hasta Que fav2!=fav1
		Escribir " Carrera(2) -  Favorito: ",fav2;
		
		Repetir
			num3<-azar(numcaballos);
			fav3<-caballo(num3);
		Hasta Que (fav3!=fav1) && (fav3!=fav2)
		Escribir " Carrera(3) -  Favorito: ",fav3;
		
		Repetir
			num4<-azar(numcaballos);
			fav4<-caballo(num4);
		Hasta Que (fav4!=fav1) && (fav4!=fav2) && (fav4!=fav3)
		Escribir " Carrera(4) -  Favorito: ",fav4;
		
		Escribir "";
		Escribir "+-------------------------------------------+";
		
		Escribir "";
		
		Repetir
			Escribir Sin Saltar "¿Introduce el número de la carrera a apostar? ";
			Leer carrera;
			
			Si (carrera>0) && (carrera<=4) Entonces
				check=Verdadero;
			SiNo
				Escribir "";
				Escribir "[ DEBES INTRODUCIR UN NÚMERO ENTRE 1 Y 4 ]";
				check=falso;
			Fin Si
		Hasta Que check==Verdadero
		
		Segun carrera Hacer
			1:fav=fav1;
			2:fav=fav2;
			3:fav=fav3;
			4:fav=fav4;
		Fin Segun
		
		
		
		
		Limpiar Pantalla;
		cuota<-azar(10)+1;
		
		cuota1=((cuota/10)+1)*2;
		cuota2=((cuota/10)+1)*1.5;
		cuota3=(cuota/10)+1;
		
		Escribir cartera(balance,ganadas);
		Escribir "+-----------< CARRERA ",carrera," >-------------+";
		Escribir " - Favorito: ",fav;
		Escribir "";
		Escribir " - Cuota Primero: x",cuota1;
		Escribir " - Cuota Segundo: x",cuota2;
		Escribir " - Cuota Tercero: x",cuota3;
		Escribir "+-------------------------------------+";
		Escribir sin saltar "¿Cuanto quieres apostar? ";
		Leer apuesta;
		Escribir "";
		
		Si apuesta>balance Entonces
			Repetir
				Escribir "[ LA APUESTA NO PUEDE SER MAYOR A TU BALANCE ]";
				Escribir sin saltar "¿Cuanto quieres apostar? ";
				Leer apuesta;
				Escribir "";
			Hasta Que apuesta<balance
		Fin Si
		
		Si apuesta<50 Entonces
			Repetir
				Escribir "[ LA APUESTA NO PUEDE SER MENOR A 50€ ]";
				Escribir sin saltar "¿Cuanto quieres apostar? ";
				Leer apuesta;
				Escribir "";
			Hasta Que apuesta<balance
		Fin Si
		balance=balance-apuesta;
		
		
		
		
		numfav=numcaballo(fav);
		caballo1=numfav;
		
		Repetir
			num<-azar(numcaballos);
			caballo2=num;
		Hasta Que num!=caballo1
		
		Repetir
			num<-azar(numcaballos);
			caballo3=num;
		Hasta Que (num!=caballo1) && (num!=caballo2)
		
		Repetir
			num<-azar(numcaballos);
			caballo4=num;
		Hasta Que (num!=caballo1) && (num!=caballo2) && (num!=caballo3)
		
		Repetir
			num<-azar(numcaballos);
			caballo5=num;
		Hasta Que (num!=caballo1) && (num!=caballo2) && (num!=caballo3) && (num!=posicion4)
		
		Repetir
			num<-azar(numcaballos);
			caballo6=num;
		Hasta Que (num!=caballo1) && (num!=caballo2) && (num!=caballo3) && (num!=caballo4) && (num!=caballo5)
		
		
		Limpiar Pantalla;
		Escribir cartera(balance,ganadas);
		Escribir lista_caballos(caballo1, caballo2, caballo3, caballo4, caballo5, caballo6);
		Escribir "+----------< CARRERA ",carrera," >-------------+";
		Escribir sin saltar "Elige el caballo a apostar ";
		Leer caballo_elegido;
		caballo_elegido<-Minusculas(caballo_elegido);
		checkcaballo<-falso;
		checkcaballo<-check_caballo(caballo_elegido);
		
		Mientras checkcaballo=falso Hacer
			Limpiar Pantalla;
			Escribir cartera(balance,ganadas);
			Escribir lista_caballos(caballo1, caballo2, caballo3, caballo4, caballo5, caballo6);
			Escribir "+----------< CARRERA ",carrera," >-------------+";
			Escribir "[ DEBES INTRODUCIR CORRECTAMENTE EL NOMBRE DEL CABALLO ]";
			Escribir sin saltar "Elige el caballo a apostar ";
			Leer caballo_elegido;
			caballo_elegido<-Minusculas(caballo_elegido);
			checkcaballo<-check_caballo(caballo_elegido);
		Fin Mientras
		
		listacaballos[1]=caballo1;
		listacaballos[2]=caballo2;
		listacaballos[3]=caballo3;
		listacaballos[4]=caballo4;
		listacaballos[5]=caballo5;
		listacaballos[6]=caballo6;
		
		
		
		
		
		Limpiar Pantalla;
		contador=34;
		b=0;
		Repetir
			
			Escribir cartera(balance,ganadas);
			Escribir "+---------------------------------------+";
			Escribir "|      LA CARRERA ESTÁ EN CURSO         |";
			Escribir "+---------------------------------------+";
			i=0;
			
			Escribir Sin Saltar "| [";
			
			Para i<-0 Hasta b Con Paso 1 Hacer
				Escribir Sin Saltar "#";
			Fin Para
			
			Para i<-0 Hasta contador-2 Con Paso 1 Hacer
				Escribir Sin Saltar " ";
			Fin Para
			
			Escribir Sin Saltar "]  |";
			
			Escribir "";
			Escribir "+---------------------------------------+";
			Escribir "";
			Escribir " > Caballo Apostado: ",caballo_elegido;
			Escribir " > Cantidad Apostada: ",apuesta,"€";
			
			contador=contador-1;
			b=b+1;
			Esperar 150 Milisegundos;
			Limpiar Pantalla;
		Hasta Que contador<=0
		
		
		
		
		
		
		Limpiar Pantalla;
		num<-azar(6)+1;
		Segun num Hacer
			1:posiciones[1]=listacaballos[1];
			2:posiciones[1]=listacaballos[2];
			3:posiciones[1]=listacaballos[3];
			4:posiciones[1]=listacaballos[4];
			5:posiciones[1]=listacaballos[5];
			6:posiciones[1]=listacaballos[6];
		Fin Segun
		
		Si posiciones[1]!=listacaballos[1] Entonces
			primerocont=0;
			azarfav<-azar(3)+1;
			Repetir
				num<-azar(6)+1;
				Segun num Hacer
					1:posiciones[1]=listacaballos[1];
					2:posiciones[1]=listacaballos[2];
					3:posiciones[1]=listacaballos[3];
					4:posiciones[1]=listacaballos[4];
					5:posiciones[1]=listacaballos[5];
					6:posiciones[1]=listacaballos[6];
				Fin Segun
				primerocont=primerocont+1;
				
			Hasta Que primerocont>=azarfav || posiciones[1]=listacaballos[1]
		Fin Si
		ganador=posiciones[1];
		
		
		Repetir
			num<-azar(6)+1;
			Segun num Hacer
				1:posiciones[2]=listacaballos[1];
				2:posiciones[2]=listacaballos[2];
				3:posiciones[2]=listacaballos[3];
				4:posiciones[2]=listacaballos[4];
				5:posiciones[2]=listacaballos[5];
				6:posiciones[2]=listacaballos[6];
			Fin Segun
		Hasta Que posiciones[2]!=posiciones[1]
		
		Repetir
			num<-azar(6)+1;
			Segun num Hacer
				1:posiciones[3]=listacaballos[1];
				2:posiciones[3]=listacaballos[2];
				3:posiciones[3]=listacaballos[3];
				4:posiciones[3]=listacaballos[4];
				5:posiciones[3]=listacaballos[5];
				6:posiciones[3]=listacaballos[6];
			Fin Segun
		Hasta Que (posiciones[3]!=posiciones[1]) && (posiciones[3]!=posiciones[2])
		
		Repetir
			num<-azar(6)+1;
			Segun num Hacer
				1:posiciones[4]=listacaballos[1];
				2:posiciones[4]=listacaballos[2];
				3:posiciones[4]=listacaballos[3];
				4:posiciones[4]=listacaballos[4];
				5:posiciones[4]=listacaballos[5];
				6:posiciones[4]=listacaballos[6];
			Fin Segun
		Hasta Que (posiciones[4]!=posiciones[1]) && (posiciones[4]!=posiciones[2]) && (posiciones[4]!=posiciones[3])
		
		Repetir
			num<-azar(6)+1;
			Segun num Hacer
				1:posiciones[5]=listacaballos[1];
				2:posiciones[5]=listacaballos[2];
				3:posiciones[5]=listacaballos[3];
				4:posiciones[5]=listacaballos[4];
				5:posiciones[5]=listacaballos[5];
				6:posiciones[5]=listacaballos[6];
			Fin Segun
		Hasta Que (posiciones[5]!=posiciones[1]) && (posiciones[5]!=posiciones[2]) && (posiciones[5]!=posiciones[3]) && (posiciones[5]!=posiciones[4])
		
		Repetir
			num<-azar(6)+1;
			Segun num Hacer
				1:posiciones[6]=listacaballos[1];
				2:posiciones[6]=listacaballos[2];
				3:posiciones[6]=listacaballos[3];
				4:posiciones[6]=listacaballos[4];
				5:posiciones[6]=listacaballos[5];
				6:posiciones[6]=listacaballos[6];
			Fin Segun
		Hasta Que (posiciones[6]!=posiciones[1]) && (posiciones[6]!=posiciones[2]) && (posiciones[6]!=posiciones[3]) && (posiciones[6]!=posiciones[4]) && (posiciones[6]!=posiciones[5])
		
		
		Escribir "+--------< RESULTADO CARRERA ",carrera," >----------+";
		Escribir "";
		
		premio=falso;
		Si Minusculas(caballo(posiciones[1]))=caballo_elegido Entonces
			Escribir "   [ Has ganado ",apuesta*cuota1,"€ ] (1º Puesto)";
			ganadas=ganadas+1;
			balance=balance+(apuesta*cuota1);
			premio=verdadero;
		Fin Si
		
		Si Minusculas(caballo(posiciones[2]))=caballo_elegido Entonces
			Escribir "   [ Has ganado ",apuesta*cuota2,"€ ] (2º Puesto)";
			ganadas=ganadas+1;
			balance=balance+(apuesta*cuota2);
			premio=verdadero;
		Fin Si
		
		Si Minusculas(caballo(posiciones[3]))=caballo_elegido Entonces
			Escribir "   [ Has ganado ",apuesta*cuota3,"€ ] (3º Puesto)";
			ganadas=ganadas+1;
			balance=balance+(apuesta*cuota3);
			premio=verdadero;
		Fin Si
		
		Si premio=falso Entonces
			Escribir "   [ Has perdido ",apuesta,"€ ]";
		Fin Si
		
		Escribir "";
		Escribir " - Caballo Ganador: ",caballo(ganador);
		Escribir " - Favorito era: ",fav;
		Escribir "";
		Escribir " - Caballo Apostado: ",caballo_elegido;
		Escribir " - Cantidad Apostada: ",apuesta,"€";
		Escribir "";
		Escribir "+-------------< POSICIONES >--------------+";
		Escribir "1) ",caballo(posiciones[1]);
		Escribir "2) ",caballo(posiciones[2]);
		Escribir "3) ",caballo(posiciones[3]);
		Escribir "4) ",caballo(posiciones[4]);
		Escribir "5) ",caballo(posiciones[5]);
		Escribir "6) ",caballo(posiciones[6]);
		Escribir "";
		
		Repetir
			Escribir sin saltar "¿Quieres seguir apostando? (S/N)";
			Leer seguir;
			seguir=Minusculas(seguir);
			
			Si seguir="s" Entonces
				final=falso;
			Fin Si
			
			Si seguir="n" Entonces
				final=Verdadero;
			Fin Si
			
			Si ((seguir!="s") && (seguir!="n")) Entonces
				Escribir "[ DEBES INTROCUDIR UNA OPCIÓN VÁLIDA (s) o (n) ]";
			Fin Si
			
		Hasta Que seguir="s" || seguir="n"
		
	Hasta Que final=Verdadero || balance<=0
	Limpiar Pantalla;
	
	Si balance<=0 Entonces
		Escribir "";
		Escribir "[ TE HAS QUEDADO SIN UN DURO PERDEDOR ]";
	SiNo
		Escribir"";
		Escribir "[ VUELVE PRONTO :D ]";
	Fin Si
	
FinAlgoritmo
