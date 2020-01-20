Funcion n <- menup
	Definir n como real;
	Limpiar Pantalla; 
	Escribir "<[ M E N U ]>";
	Escribir "1) Suma";
	Escribir "2) Resta";
	Escribir "3) Multiplicación";
	Escribir "4) División";
	Escribir "5) Potencia";
	Escribir "-------------------------------------";
	Escribir Sin Saltar "Elige una opción ";
	Leer n;
	Escribir "-------------------------------------";
Fin Funcion

Funcion n <- suma (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ SUMA ]>------------";
	Escribir "Ingresa el primer número a sumar";
	Leer n1;
	Escribir "Ingresa el segundo número a sumar";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"+",n2,"= ",n1+n2;
Fin Funcion

Funcion n <- resta (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ RESTA ]>------------";
	Escribir "Ingresa el primer número a restar";
	Leer n1;
	Escribir "Ingresa el segundo número a restar";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"-",n2,"= ",n1-n2;
Fin Funcion

Funcion n <- multiplicacion (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ MULTIPLICACIÓN ]>------------";
	Escribir "Ingresa el primer número a multiplicar";
	Leer n1;
	Escribir "Ingresa el segundo número a multiplicar";
	Leer n2;
	Escribir "";
	Escribir "RESULTADO: ",n1,"*",n2,"= ",n1*n2;
Fin Funcion

Funcion n <- division (n1, n2)
	Limpiar Pantalla;
	Escribir "------------<[ DIVISIÓN ]>------------";
	Escribir "Ingresa el primer número a dividir";
	Leer n1;
	Escribir "Ingresa el segundo número a dividir";
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
			Escribir "[ DEBES DE ELEGIR UNA OPCIÓN VÁLIDA ]";
	Fin Segun
	
	Escribir "¿Quieres volver ha hacer una operación? (S/N)";
	Leer check;
	Hasta Que check="N" || check="n"
	
FinAlgoritmo
