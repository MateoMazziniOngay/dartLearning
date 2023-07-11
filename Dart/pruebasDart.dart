void main() {
  //  NUMEROS

  // Al trabajar con numeros trabajamos con los enteros que se definen con la
  // palabra reservada "int" y el nombre de la variable.

  int empleados = 10;
  // Si le agregamos un .n siendo n numeros decimales, esto se convierte en
  // "double".

  double pi = 3.14;
  // Esto no es de tipo entero.
  // Aunque defina un numero redondo, se pone una precision de .0, porque sino
  // dart va a inferir que es un int y no un double.

  print('$empleados - $pi');

  //  STRING

  // Se define con la primera letra en mayuscula porque es una clase, a
  // diferencia de los int, etc.

  String nombre = 'Mateo';

  // Al ser una cadena de caracteres, se comporta como un array de caracteres,
  // por lo que para imprimir una letra de la palabra simplemente se usan los
  // parentesis rectos y la posicion de la letra dentro del string. Aunque en
  // dart no se maneja mucho el termino de array, sino que el de lista.

  print(nombre[0]);

  // Para obtener el ultimo caracter del string puedo usar las funciones de la
  // clase String, como el length que devuelve la cantidad de caracteres del
  // string
  print(nombre[nombre.length - 1]);

  //  BOOLEANOS

  // Para definir un booleano se usa la palabra reservada "bool", seguida del
  // nombre de la variable.
  bool activado = true;

  print(activado);

  activado = !activado;

  // Dart tira la alerta de dead code si una parte del codigo no se va a
  // llegara a ejecutar, como en el ejemplo de abajo, al definir el booleano
  // "activado" como true, y luego redefinirlo a false, el lenguaje ya sabe que
  // la primera parte del if no va a ser ejecutada, ya que nunca va a acceder
  // a ella, dando de esta forma dead code.
  if (activado) {
    print('El motor esta funcionando');
  } else {
    print('Esta apagado');
  }

  //  LISTA

  // Una lista es una colleccion de objetos que tienen algo en comun.
  // La sintaxis es List numeros = [1,2,3,4,5]; En este caso son todos numeros
  // enteros, pero sin embargo, el tipo de dato de la lista numeros va a ser
  // dinamico.
  List numeros = [1, 2, 3, 4, 5];
  print(numeros);

  // Para agregar valores a la lista se usa .add(<valor>);
  numeros.add(6);
  print(numeros);

  // Al ser dinamica la lista, se puede agregar cualquier tipo de dato.
  // Esto se puede restringir diciendole a dart el tipo de dato que espero para
  // la lista:
  List<int> numerosInt = [1, 2, 3, 4, 5];

  //  MAP

  // Definición de un MAP, se los conoce como diccionarios de datos.
  // Los Map son pares de valores, el primer valor es la llave y el segundo es el valor.
  Map persona = {
    'nombre': 'Mateo',
    'edad': 23,
    'soltero': false
  }
  // Es posible definir los tipos de datos que va a tener el Map
  Map<String, dynamic> persona2 = {
    'nombre': 'Mateo',
    'edad': 23,
    'soltero': false
  }
  // También puede tener como valor una lista u otro mapa, etc
  // Para llamar al nombre, no se hace como en los objetos que se pone 'persona.nombre'
  // dado que al poner el . se llama a los atributos de Map.
  // En cambio se llama asi: persona['nombre'];
  
  // Para añadir elementos al Map
  persona2.addAll({'trabajo': false});


}

  //  FUNCIONES

  // void main() es una funcion, pero las funciones se definen fuera del main y se llaman dentro de tal.
  // void se utiliza antes de la definición de la función para decir que ésta no devuelve nada.
  void saludar() {
    print('Hola');
  }
  // Luego es posible llamar a la funcion en el main
  saludar();

  // Tambien se puede definir funciones que deban devolver valores, estas deben contener un 'return', 
  // seguido por un valor del tipo definido al principio de la funcion.
  String saludar() {
    return 'Hola';
  }

  // Otra posibilidad es pasar parametros a la funcion
  String saludarPersona(saludo, nombre) {
    return '$saludo $nombre';
  }
  // Luego en el main se introducen los valores en el parentesis
  saludarPersona('Hola ', 'Mateo');
  // Se puede especificar el tipo de valor de los parametros a ingresar en las funciones
  String saludarPersona2(String saludo, String nombre) {
    return '$saludo $nombre';
  }
  // Otra posibilidad que brinda Dart es darle nombre a los parametros de las funciones, en vez de solo
  // aparecer el tipo de dato a ser ingresado. Esto se logra a traves de encerrar los parametros entre {}.
  String saludarPersona3({ String saludo, String nombre }) {
    return '$saludo $nombre';
  }
  // Al hacer esto, pasa a ser necesario al momento de llamar la funcion e ingresar los valores, 
  // poner el nombre del valor antes de escribirlo, de esta forma se asigna el dato al valor, 
  // y no importa el orden en que se ingresen.
  saludarPersona3(nombre: 'Mateo', saludo: 'Hola, ');

  // En dart existen las arrow functions, donde luego de la flecha va lo que iria luego del return.
  String saludarPersona3({ String saludo, String nombre }) => '$saludo $nombre';
  

