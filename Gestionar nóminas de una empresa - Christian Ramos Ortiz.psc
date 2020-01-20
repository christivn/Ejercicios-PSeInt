Funcion rellena_empleados(empleado, empleado_num Por Referencia,a)
	Definir nombre, apellidos, categoria como texto;
	Definir categoria_num, sueldo, extras, precio_extras, hijos, irpf como numero;
	Limpiar Pantalla;
	Definir i como numero;
	Para i<-0 Hasta a-1 Con Paso 1 Hacer
		Escribir "<===========[ EMPLEADO Nº",i+1,"]============>";
		
		Escribir Sin Saltar "Nombre: ";
		Leer nombre;
		empleado[i,0]=nombre;
		
		Escribir Sin Saltar "Apellidos: ";
		Leer apellidos;
		empleado[i,1]=apellidos;
		
		Escribir Sin Saltar "Categoría (1 encargado) (2 operario): ";
		Leer categoria_num;
		Si categoria_num=1 Entonces
			categoria="Encargado";
			sueldo=2000;
			precio_extras=15;
		Fin Si
		Si categoria_num=2 Entonces
			categoria="Operario";
			sueldo=1500;
			precio_extras=10;
		Fin Si
		empleado[i,2]=categoria;
		empleado_num[i,0]=sueldo;
		
		Escribir Sin Saltar "Horas extras del mes: ";
		Leer extras;
		empleado_num[i,1]=extras;
		empleado_num[i,2]=precio_extras;
		
		Escribir Sin Saltar "Número de hijos: ";
		Leer hijos;
		Si hijos=0 Entonces
			irpf=22;
		Fin Si
		Si hijos=1 || hijos=2 Entonces
			irpf=17;
		Fin Si
		Si hijos>2 Entonces
			irpf=12;
		Fin Si
		empleado_num[i,3]=hijos;
		empleado_num[i,4]=irpf;
		
		Limpiar Pantalla;
	Fin Para
Fin Funcion


Funcion rellena_empleados_aleatorio(empleado, empleado_num Por Referencia,a)
	Definir nombre, apellidos, categoria, apellidos1, apellidos2, pasar como texto;
	Definir categoria_num, sueldo, extras, precio_extras, hijos, irpf,rand como numero;
	Limpiar Pantalla;
	Definir i como numero;
	Para i<-0 Hasta a-1 Con Paso 1 Hacer
		Escribir "<===========[ EMPLEADO Nº",i+1,"]============>";
		rand=azar(10);
		Segun rand Hacer
			0: nombre="Manuel";
			1: nombre="Maria";
			2: nombre="Jose";
			3: nombre="Marta";
			4: nombre="Ainoa";
			5: nombre="Jaime";
			6: nombre="Nerea";
			7: nombre="Manolo";
			8: nombre="Juanma";
			9: nombre="Lucia";
		Fin Segun
		empleado[i,0]=nombre;
		
		rand=azar(10);
		Segun rand Hacer
			0: apellidos1="Lopez";
			1: apellidos1="Gonzalez";
			2: apellidos1="Ortiz";
			3: apellidos1="Blanco";
			4: apellidos1="Ruiz";
			5: apellidos1="Vega";
			6: apellidos1="Nieto";
			7: apellidos1="Ramirez";
			8: apellidos1="Gomez";
			9: apellidos1="Lucenilla";
		Fin Segun
		
		rand=azar(10);
		Segun rand Hacer
			0: apellidos2=" Lopez";
			1: apellidos2=" Gonzalez";
			2: apellidos2=" Ortiz";
			3: apellidos2=" Blanco";
			4: apellidos2=" Ruiz";
			5: apellidos2=" Vega";
			6: apellidos2=" Nieto";
			7: apellidos2=" Ramirez";
			8: apellidos2=" Gomez";
			9: apellidos2=" Lucenilla";
		Fin Segun
		
		apellidos=apellidos1+apellidos2;
		empleado[i,1]=apellidos;
		
		
		
		categoria_num=azar(2)+1;
		Si categoria_num=1 Entonces
			categoria="Encargado";
			sueldo=2000;
			precio_extras=15;
		Fin Si
		Si categoria_num=2 Entonces
			categoria="Operario";
			sueldo=1500;
			precio_extras=10;
		Fin Si
		empleado[i,2]=categoria;
		empleado_num[i,0]=sueldo;
		
		
		extras=azar(15);
		empleado_num[i,1]=extras;
		empleado_num[i,2]=precio_extras;
		
		
		hijos=azar(4);
		Si hijos=0 Entonces
			irpf=22;
		Fin Si
		Si hijos=1 || hijos=2 Entonces
			irpf=17;
		Fin Si
		Si hijos>2 Entonces
			irpf=12;
		Fin Si
		empleado_num[i,3]=hijos;
		empleado_num[i,4]=irpf;
		
		
		Escribir "Nombre: ",nombre;
		Escribir "Apellidos: ",apellidos;
		Escribir "Categoría: ",categoria;
		Escribir "Horas extras del mes: ",extras;
		Escribir "Número de hijos: ",hijos;
		Escribir "";
		
		Esperar 2 segundo;
	Fin Para
	
	Escribir Sin Saltar "[ PULSA ENTER PARA VOLVER AL MENU ]";
	Leer pasar;
Fin Funcion


Funcion n<-muestra_empleado(empleado, empleado_num,a)
	Definir i como numero;
	
	Escribir "<============================>";
	Escribir "| Base de datos de empleados |";
	Escribir "<============================>";
	
	Para i<-0 Hasta a-1 Con Paso 1 Hacer
		Escribir i+1,".) ",empleado[i,0]," ",empleado[i,1];
		Escribir "";
	Fin Para
FinFuncion

Funcion n<-imprimir_nomina(empleado, empleado_num,i)
	Escribir "<============================>";
	Escribir "|           NÓMINA           |";
	Escribir "<============================>";
		i=i-1;
		Escribir "  Nombre: ",empleado[i,0]," ",empleado[i,1];
		Escribir "  Cargo: ",empleado[i,2];
		Escribir "";
		Escribir "  Horas Extra: ",empleado_num[i,1];
		Escribir "  Precio Horas Extra: ",empleado_num[i,2],"€";
		Escribir "  Sueldo Base: ",empleado_num[i,0],"€";
		Escribir "  IRPF: ",empleado_num[i,4],"%";
		Escribir "";
		Escribir "-----------------------------";
		Escribir "  Suledo Total: ",((empleado_num[i,1]*empleado_num[i,2])+empleado_num[i,0]),"€";
		Escribir "  Base IRPF: ",(((empleado_num[i,1]*empleado_num[i,2])+empleado_num[i,0])*(empleado_num[i,4]/100)),"€";
		Escribir "-----------------------------";
		Escribir "  TOTAL A PERCIBIR: ",((empleado_num[i,1]*empleado_num[i,2])+empleado_num[i,0])-(((empleado_num[i,1]*empleado_num[i,2])+empleado_num[i,0])*(empleado_num[i,4]/100)),"€";
		Escribir "";
FinFuncion

Algoritmo administrador_nominas
	Definir empleado como texto;
	Definir a, menu, empleado_num, op, data_op como numero;
	Definir final como logico;
	
	Definir pasar como texto;
	
	
	final=Verdadero;
	Mientras final Hacer
	Limpiar Pantalla;
	Escribir "<=====================================>";
	Escribir "| PROGRAMA DE GESTIÓN DE TRABAJADORES |";
	Escribir "<=====================================>";
	Escribir "1. Cargar datos de los trabajadores.";
	Escribir "2. Mostrar la base de datos de los empleados.";
	Escribir "3. Imprimir las nóminas.";
	Escribir "4. Salir.";
	Escribir "<=====================================>";
	Escribir Sin Saltar "Seleccionar una opción: ";
	Leer menu;
	
	
	Segun menu Hacer
		1:  Limpiar Pantalla;
			Escribir "<==============================>";
			Escribir "| Cargar datos de trabajadores |";
			Escribir "<==============================>";
			Escribir "1. Insertar datos manualmente.";
			Escribir "2. Generar datos aleatoriamente.";
			Escribir "<==============================>";
			Escribir Sin Saltar "Selecciona una opción ";
			Leer data_op;
			

			Segun data_op Hacer
				1:  Escribir Sin Saltar "Número de empleados a añadir: ";
					Leer a;
					Dimension empleado[a,3];
					Dimension empleado_num[a,5];
					rellena_empleados(empleado, empleado_num,a);
					
				2:	Escribir Sin Saltar "Número de empleados a añadir: ";
					Leer a;
					Dimension empleado[a,3];
					Dimension empleado_num[a,5];
					rellena_empleados_aleatorio(empleado, empleado_num,a);
			Fin Segun
			

			
		2:  Limpiar Pantalla;
			Escribir muestra_empleado(empleado, empleado_num,a);
			Escribir Sin Saltar "[ PULSA ENTER PARA VOLVER AL MENU ]";
			Leer pasar;
			
		3:
			Limpiar Pantalla;
			Escribir muestra_empleado(empleado, empleado_num,a);
			Escribir Sin Saltar "Introduce ID de empleado:";
			Leer op;
			
			Limpiar Pantalla;
			Escribir imprimir_nomina(empleado, empleado_num,op);
			Escribir Sin Saltar "[ PULSA ENTER PARA VOLVER AL MENU ]";
			Leer pasar;
		4:
			Limpiar Pantalla;
			Escribir "<===========================>";
			Escribir "| SE HA CERRADO EL PROGRAMA |";
			Escribir "<===========================>";
			final=falso;
	Fin Segun
	
	
	
Fin Mientras
FinAlgoritmo
