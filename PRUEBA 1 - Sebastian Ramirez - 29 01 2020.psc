Algoritmo Prueba_1
	

	// Comenzamos con la construcci�n del Menu
	definir opcion Como Entero;
	
	
	limpiar pantalla; 
	Escribir "Esta es la prueba no.1" ; 
	Escribir "debe llamar a funciones que realicen las siguientes tareas ya vistas en clase: " ;
	Escribir " ";
	Escribir "1.-  Secuencial";
	Escribir "2.-  Condicional - si, entonces";
	Escribir "3.-  Condicional - si, entonces anidado";
	Escribir "4.-  Condicional - Segun";
	Escribir "5.-  Repetitiva - Mientras";
	Escribir "6.-  Repetitiva - Repetir";
	Escribir "7.-  Repetitiva - Para";
	Escribir "8.-  Arreglo simple (vector[n])";
	Escribir "9.-  Arreglo bidimensional (matriz[n,m])";
	Escribir "10.- Salir";
	Escribir " ";
	
	// ingresar una opcion
	Escribir "Elija una opci�n (1-10): "
	Leer opcion;
	
	// llevar opcion elegida hacia su respectiva funci�n
	Segun opcion Hacer
		
		1: 
			resultado <- Funcion1()
		2:
			resultado <- Funcion2();
		3: 
			resultado <- Funcion3()
		4: 
			resultado <- Funcion4();
		5: 
			resultado <- Funcion5();
		6: 
			resultado <- Funcion6();
		7: 
			resultado <- Funcion7();
		8: 
			resultado <- Funcion8();
		9: 
			resultado <- Funcion9();
		10: 
			Escribir " �adi�s! "	
			
	FinSegun
	
	
	
	

FinAlgoritmo



// ** De aqu� en adelante, se definen las instrucciones para cada funci�n ** 

Funcion resultado <- Funcion1()
	// "1.-  Secuencial"
	// Deber� pedir 3 n�meros y mostrar el promedio de estos.
	definir n1, n2, n3 Como Real
	Escribir "ingrese tres numeros, calcularemos el promedio de ellos: "
	leer n1, n2, n3
	resultado <- (n1 + n2 + n3)/3;
	Escribir "el resultado es: ", resultado
	
FinFuncion


Funcion resultado <- Funcion2()
	// "2.-  Condicional - si, entonces"
	// Se pide nombre y g�nero de la persona, el g�nero deriva a ba�o de hombres o de mujeres.
	Escribir "�cual es su nombre?" ;
	leer nombre;
	
	definir genero Como Entero;
	Escribir " Hola, ", nombre, ". �Cu�l es su g�nero? escriba 1 para hombre, 2 para mujer";
	leer genero;
	
	// Mediante condicional, los enviamos al ba�o correcto. No somos responsables de lo que haya ah� dentro
	si genero = 1 entonces
		resultado <- genero;
		Escribir "favor, pase al ba�o de hombres";
		
	SiNo
		Escribir "favor, pase al ba�o de mujeres";
		
	FinSi
	
FinFuncion


Funcion resultado <- Funcion3()
	// "3.-  Condicional - si, entonces anidado"
	// Basado en la funci�n 2, adiciona cobro de $250 por uso de ba�o o de $2500 por uso de ducha.
	// Se pide nombre y g�nero de la persona, el g�nero deriva a ba�o de hombres o de mujeres.
	Escribir "�cual es su nombre?" ;
	leer nombre;
	
	definir genero Como Entero;
	Escribir " Hola, ", nombre, ". �Cu�l es su g�nero? escriba 1 para hombre, 2 para mujer";
	leer genero;
	
	// Mediante condicional, los enviamos al ba�o correcto. Luego le cobramos seg�n lo que haga all� dentro...
	
	definir tarifa, usaducha como entero;
	tarifa <-0;
	si genero = 1 entonces
		resultado <- genero;
		Escribir "Son $250; favor, pase al ba�o de hombres";
		tarifa <- tarifa +250
		Escribir "�usar� tambien la ducha? 1: si ; 2: no"
		leer usaducha
		si usaducha =1 Entonces
			tarifa <- tarifa + 2500
		FinSi
		
	SiNo
		
		Escribir "Son $250; favor, pase al ba�o de mujeres";
		tarifa <- tarifa +250
		Escribir "�usar� tambien la ducha? 1: si ; 2: no"
		leer usaducha
		si usaducha =1 Entonces
			tarifa <- tarifa + 2500
		FinSi
		
		
	FinSi
	
	resultado <- tarifa
	Escribir " el monto a pagar es ", resultado;
	
FinFuncion


Funcion resultado <- Funcion4()
	// "4.-  Condicional - Segun"
	// Ingresar un n�mero de 1 a 10 y mostrar n�mero en palabras.
	Definir resultado como entero;
	Escribir "ingrese un numero del 1 al 10 y se lo escribo por ac�";
	leer resultado;
	Segun resultado Hacer
		1:
			Escribir "uno";
		2:
			Escribir "dos";
		3:
			Escribir "tres";
		4:
			Escribir "cuatro";
		5:
			Escribir "cinco";
		6:
			Escribir "seis"
		7:
			Escribir "siete"
		8:
			Escribir "ocho"
		9:
			Escribir "nueve"
		10:
			Escribir "diez"
			
	Fin Segun
FinFuncion


Funcion resultado <- Funcion5()
	// "5.-  Repetitiva - Mientras"
	// Ingresar N n�meros, detener el ingreso al digitar un cero, mostrar numeros ingresados excluyendo cero, calcular promedio.
	
	Definir i, monto, contador, subtotal, resultado Como Entero;
	Escribir " escriba un numero entero, promediaremos todo lo que ingrese... hasta que ingrese un cero";
	contador <-0;
	Repetir
		Escribir "ingrese numero";
		leer i;
		Mientras i <> 0 Hacer
			monto<-i
			subtotal<-monto+i
			contador <- contador+1
		Fin Mientras
	Hasta que i=0
	
	resultado <- subtotal/contador;
	Escribir "el promedio es: ", resultado;
FinFuncion


Funcion resultado <- Funcion6()
	//"6.-  Repetitiva - Repetir"
	// Ingresar N nombres con "J", al ingresar "Juan" decir "ganaste" y mostrar cantidad de intentos realizados antes de ganar.
	Definir nombre como caracter;
	Definir contar como entero;
	contar <-0
	
	Repetir
		Escribir "escriba un nombre cualquiera, recuerde que la primera letra es may�scula"
		leer nombre;
		contar <- contar+1
		
	Hasta Que nombre = "Juan"
	
	Escribir "Ganaste, despues de ", contar-1, " intentos. ";
	
FinFuncion


Funcion resultado <- Funcion7()
	// "7.-  Repetitiva - Para"
	// Para un m�ximo de 10 personas, preguntar nombre y mostrar los que se repiten mas de una vez. Si no hay duplicados, Escribirlo.
	
	definir name como caracter;
	Definir n, repetido como entero;
	repetido <-0
	Para n<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "�Cual es su nombre?"
		leer name;
		repetido<-ConvertirANumero(name);
		// la idea es convertir el nombre a n�mero, luego comparar valores de nombre y mostrar los repetidos.
		// Fin del tiempo!
	Fin Para
	
FinFuncion


Funcion resultado <- Funcion8()
	// "8.-  Arreglo simple (vector[n])"
	// Pedir el tama�o de un arreglo al cual ingresar lista del curso, mostrarlos en pantalla con maximo 5 nombres por l�nea.
	
	definir largo como entero;
	escribir "ingrese el largo del arreglo:";
	leer largo;
	
	definir A,i como entero;
	dimension A[largo];
	
	Para i<-0 hasta largo-1 hacer
		// ac� se ingresan los nombres como valores del vector A
		// Fin del tiempo!
	FinPara
	
FinFuncion


Funcion resultado <- Funcion9()
	// "9.-  Arreglo bidimensional (matriz[n,m])"
	// Ingresar nombre, apellido, fono, email de cada persona del curso fullstack y mostrar todos los datos de cada uno en una l�nea.
FinFuncion


