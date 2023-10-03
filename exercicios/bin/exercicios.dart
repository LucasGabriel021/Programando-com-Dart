import 'package:exercicios/exercicios.dart' as exercicios;
import 'dart:io';

void main() {
  // Exercício de Números Impares
  int soma = 0;
  for(int i = 1; i < 100; i+=2) {
    soma += i;
    print("Soma: $soma");
  }

  // Exercicio de Fatorial
  print("Informe um número qualquer: ");
  String? input = stdin.readLineSync();

  if(input != null) {
    int numero = int.parse(input);

    for(int i = numero - 1; i != 0; i--) {
      numero *= i;
    }
    print("O fatorial de $input é $numero");
  }
}
