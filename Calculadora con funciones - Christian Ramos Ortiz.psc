Funcion n <- menup
	Definir n como real;
	Limpiar Pantalla; 
	Escribir "<[ M E N U ]>";
	Escribir "1) Suma";
	Escribir "2) Resta";
	Escribir "3) Multiplicaci�n";
	Escribir "4) Divisi�n";
	Escribir "5) Potencia";
	Escribir "-------------------------------------";
	Escribir Sin Saltar "Elige una opci�n ";
	Leer n;
	Escribir "-------------------------------------";
Fin Funcion

Funcion n <- suma (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ SUMA ]>------------";
	Escribir "Ingresa el primer n�mero a sumar";
	Leer n1;
	Escribir "Ingresa el segundo n�mero a sumar";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"+",n2,"= ",n1+n2;
Fin Funcion

Funcion n <- resta (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ RESTA ]>------------";
	Escribir "Ingresa el primer n�mero a restar";
	Leer n1;
	Escribir "Ingresa el segundo n�mero a restar";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"-",n2,"= ",n1-n2;
Fin Funcion

Funcion n <- multiplicacion (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ MULTIPLICACI�N ]>------------";
	Escribir "Ingresa el primer n�mero a multiplicar";
	Leer n1;
	Escribir "Ingresa el segundo n�mero a multiplicar";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"*",n2,"= ",n1*n2;
Fin Funcion

Funcion n <- division (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ DIVISI�N ]>------------";
	Escribir "Ingresa el primer n�mero a dividir";
	Leer n1;
	Escribir "Ingresa el segundo n�mero a dividir";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"/",n2,"= ",n1/n2;
Fin Funcion

Funcion n <- potencia (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ POTENCIA ]>------------";
	Escribir "Ingresa la base";
	Leer n1;
	Escribir "Ingresa el exponente";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"^",n2,"= ",n1^n2;
Fin Funcion

Algoritmo calculadora
	Definir menu,n1,n2 como real;
	Definir check como texto;
	check<-"S";
	
	Repetir
		menu<-menup;

	Segun menu Hacer
		1:
			Escribir suma(n1,n2);
		2:
			Escribir resta(n1,n2);
		3:
			Escribir multiplicacion(n1,n2);
		4:
			Escribir division(n1,n2);
		5:
			Escribir potencia(n1,n2);
			
		De Otro Modo:
			Escribir "[ DEBES DE ELEGIR UNA OPCI�N V�LIDA ]";
	Fin Segun
	
	Escribir "�Quieres volver ha hacer una operaci�n? (S/N)";
	Leer check;
	Hasta Que check="N" || check="n"
	
FinAlgoritmo
