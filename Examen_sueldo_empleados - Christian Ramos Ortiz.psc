////////////////////////////
// Christian Ramos Ortiz //
//////////////////////////


Funcion n<-registrar_empleado(empleado, empleado_num,num_empleados)
	Definir nombre, apellido1, apellido2 como texto;
	Definir horas como numero;
	Definir i como numero;
	Definir check como logico;
	
	Escribir " Bienvenidos al programa de cálculo de nóminas";
	Escribir "-----------------------------------------------";
	Escribir "";
	
	// Bucle para introducir los datos de los empleados
	Para i<-0 Hasta num_empleados-1 Con Paso 1 Hacer
	Escribir "[ Empleado nº",num_empleados," ]";
	
	Escribir Sin Saltar "Nombre ";
	Leer nombre;
	empleado[i,0]=nombre;
	
	Escribir Sin Saltar "Apellido 1 ";
	Leer apellido1;
	empleado[i,1]=apellido1;
	
	Escribir Sin Saltar "Apellido 2 ";
	Leer apellido2;
	empleado[i,2]=apellido2;
	
	Escribir Sin Saltar "Horas trabajadas en el mes ";
	check=verdadero;
	Mientras check Hacer
		Leer horas;
		check=falso;
	
	Si horas>160 Entonces
		Escribir "[ EL TRABAJADOR NO PUEDE HACER MAS DE 160 HORAS ]";
		check=verdadero;
	Fin Si
	
	Si horas<0 Entonces
		Escribir "[ DEBES DE INTRODUCIR UN DATO VÁLIDO ]";
		check=verdadero;
	Fin Si
	Fin Mientras
	
	empleado_num[i,0]=horas;
	empleado_num[i,1]=horas*12;
	
	Escribir "";
	Fin Para
FinFuncion




Funcion n<-muestra_empleado(empleado, empleado_num,num_empleados)
	Definir i como numero;
	
	Escribir " Bienvenidos al programa de cálculo de nóminas";
	Escribir "-----------------------------------------------";
	Escribir "";
	Escribir "[ Muestra de nóminas ]";
	Escribir "";
	
	// Bucle para mostrar todas la nóminas de todos los empleados
	Para i<-0 Hasta num_empleados-1 Con Paso 1 Hacer
		Escribir i+1,".) Nombre: ",empleado[i,0]," ",empleado[i,1]," ",empleado[i,2];
		Escribir "    Horas trabajadas: ",empleado_num[i,0],"  Sueldo: ",empleado_num[i,1],"€";
		Escribir "";
	Fin Para
FinFuncion




Funcion n<-sorteo_empleados(empleado, empleado_num,num_empleados)
	Definir enter como texto;
	Definir ganador como numero;
	
	Limpiar Pantalla;
	
	Si num_empleados!=0 Entonces
		
		// Bucle para la animación del sorteo
		Definir i, rand como numero;
		Para i<-0 Hasta 25 Con Paso 1 Hacer
			Limpiar Pantalla;
			Escribir " Bienvenidos al programa de cálculo de nóminas";
			Escribir "-----------------------------------------------";
			Escribir "";
			Escribir "[ Sorteo de Navidad ]";
			Escribir "Se sortea una paletilla ibérica entre los empleados";
			Escribir "";
			Escribir "El empleado ganador es: ";
			Escribir "(SORTEANDO . . .)";
			
			rand=azar(num_empleados);
			Escribir "  - ",empleado[rand,0]," ",empleado[rand,1]," ",empleado[rand,2];
			Esperar 100 Milisegundos;
			Limpiar Pantalla;
		Fin Para
		
		
		Escribir " Bienvenidos al programa de cálculo de nóminas";
		Escribir "-----------------------------------------------";
		Escribir "";
		Escribir "[ Sorteo de Navidad ]";
		Escribir "Se sortea una paletilla ibérica entre los empleados";
		Escribir "";
		Escribir "El empleado ganador es:";
		
		// Empleado ganador
		ganador=azar(num_empleados);
		Escribir "  - ",empleado[ganador,0]," ",empleado[ganador,1]," ",empleado[ganador,2];
		
		Escribir "";
		Escribir "[ PULSA ENTER PARA VOLVER AL MENU ]";
		Leer enter;
	SiNo
		Escribir "[ PRIMERO DEBES DE REGISTRAR ALGÚN EMPLEADO ]";
		Escribir "";
		Escribir "[ PULSA ENTER PARA VOLVER AL MENU ]";
		Leer enter;
	Fin Si


FinFuncion




Algoritmo Examen01_ED
	Definir num_empleados, menu, empleado_num como real;
	Definir empleado, enter como texto;
	Definir check, final como logico;
	
	final=falso;
	Mientras final=falso Hacer
		
	Limpiar Pantalla;
	Escribir " Bienvenidos al programa de cálculo de nóminas";
	Escribir "-----------------------------------------------";
	Escribir "";
	Escribir "[ Menu principal ]";
	Escribir "1. Introducir datos de los empleados";
	Escribir "2. Muestra las nóminas";
	Escribir "3. Sorteo Navidad";
	Escribir "4. Salir";
	Escribir "";
	Escribir Sin Saltar "Selecciona una opción ";
	Leer menu;
	
	check=falso;
	Mientras check=falso Hacer
	Segun menu Hacer
		1:
			Limpiar Pantalla;
			Escribir " Bienvenidos al programa de cálculo de nóminas";
			Escribir "-----------------------------------------------";
			Escribir Sin Saltar "Introduce el número de empleados ";
			Leer num_empleados;
			
			// Dos arrays (un para los números y otro para el texto)
			Dimension empleado[num_empleados,3];
			Dimension empleado_num[num_empleados,2];
			
			Limpiar Pantalla;
			// Función para registrar los empleados
			Escribir registrar_empleado(empleado, empleado_num,num_empleados);
		
			check=Verdadero;
			
			
		2:
			Limpiar Pantalla;
			// Función para mostrar las nóminas de todos los empleados
			Escribir muestra_empleado(empleado, empleado_num,num_empleados);
			
			Escribir "[ PULSA ENTER PARA VOLVER AL MENU ]";
			Leer enter;
			
			check=Verdadero;
			
			
		3:
			// Función del sorteo de navidad
			Escribir sorteo_empleados(empleado, empleado_num,num_empleados);
			check=Verdadero;
			
			
		4:
			// Cerrar el programa (salir del bucle)
			final=Verdadero;
			check=Verdadero;
		De Otro Modo:
			Escribir "[ DEBES INTRODUCIR UNA OPCIÓN VÁLIDA ]";
	Fin Segun
	
Fin Mientras
Fin Mientras

// Cuenta atras para cierre del programa
Definir i como numero;
Si final Entonces
	Para i<-5 Hasta 1 Con Paso -1 Hacer
		Limpiar Pantalla;
		Escribir "[ El programa se cerrará en ",i," segundos ]";
		Esperar 1 segundos;
	Fin Para
Fin Si
	
FinAlgoritmo
