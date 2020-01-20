Algoritmo Ejercicio_1
	Definir mes_escrito, mes como numero;
	
	Escribir Sin Saltar "Introduce un mes (Formato número) ";
	Leer mes_escrito;
	Escribir "--------------------------------------------";
	
	dimension mes[12,1];
	mes[0,0]=31;
	mes[1,0]=28;
	mes[2,0]=31;
	mes[3,0]=30;
	mes[4,0]=31;
	mes[5,0]=30;
	mes[6,0]=31;
	mes[7,0]=31;
	mes[8,0]=30;
	mes[9,0]=31;
	mes[10,0]=30;
	mes[11,0]=31;
	
	Escribir "El mes (",mes_escrito,") tiene ",mes[(mes_escrito-1),0]," días.";
	
FinAlgoritmo
