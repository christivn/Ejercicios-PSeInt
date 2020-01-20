Algoritmo Empleados_Sueldo
	Definir nombres, nombre, apellido1, apellido2 como texto;
	Definir sueldo, sueldo_leer, i como numero;
	
	Dimension nombres[5,3];
	Dimension sueldo[5];
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Limpiar Pantalla;
		Escribir "<---------------[ Empleado ",(i+1)," ]--------------->";
		Escribir Sin Saltar "Introduce el nombre ";
		Leer nombre;
		nombres[i,0]=nombre;
		
		Escribir Sin Saltar "Introduce el primer apellido ";
		Leer apellido1;
		nombres[i,1]=apellido1;
		
		Escribir Sin Saltar "Introduce el segundo apellido ";
		Leer apellido2;
		nombres[i,2]=apellido2;
	Fin Para
	Limpiar Pantalla;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Limpiar Pantalla;
		Escribir "<---------------[ Empleado ",(i+1)," ]--------------->";
		Escribir "Nombre Completo: ",nombres[i,0]," ",nombres[i,1]," ",nombres[i,2];
		Escribir Sin Saltar "Introduce el sueldo ";
		Leer sueldo_leer;
		sueldo[i]=sueldo_leer;
	Fin Para
	Limpiar Pantalla;
	
	Escribir "<---------------[ Lista de Empleados ]--------------->";
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir (i+1),") ",nombres[i,0]," ",nombres[i,1]," ",nombres[i,2],"  |  Sueldo: ",sueldo[i],"€";
	Fin Para
	
FinAlgoritmo
