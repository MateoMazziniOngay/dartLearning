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

  //  MAP  EP-6
}
