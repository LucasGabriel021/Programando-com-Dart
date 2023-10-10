import 'package:exercicios/exercicios.dart' as exercicios;
import 'dart:io';

void main() {
  // OBS: dart run --> Rodar no terminal o Dart
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

  // Verificar palíndromo
  print("Informe uma palavra para realizar a verificação: ");
  String? palavra = stdin.readLineSync();

  if(palavra != null) {
    int tamPalavra = palavra.length;
    String palindromo = '';
    for(int i = tamPalavra - 1; i >= 0; i--) {
      palindromo += palavra[i];
    }
    if(palindromo == palavra) {
      print("\nÉ um paliíndromo!");
    } else {
      print("\nNão é um palíndromo!");
    }
  }

  // Contagem de vogais e consoantes
  print("Informe uma frase ou palavra: ");
  String? frase = stdin.readLineSync();
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];

  if(frase != null) {
    String fraseConvertida = frase.toLowerCase();
    //print(fraseConvertida);

    int qtdVogais = 0;
    int qtdConsoantes = 0;

    for(int i = 0; i < fraseConvertida.length; i++) {
      if(fraseConvertida[i].contains(RegExp(r'[aeiou]'))) {
        qtdVogais++;
      } else if(fraseConvertida[i].contains(RegExp(r'[a-z]'))) {
        qtdConsoantes++;
      }
    }

    print("Número de Vogais na frase $qtdVogais");
    print("Número de Consoantes na frase $qtdConsoantes");

  }

  // Serie de Fibonacci
  print("Informe o quantos números devem ser gerados a sequência: ");
  String? campo = stdin.readLineSync();

  if(campo != null) {
    int sequencia = int.parse(campo);
    int primeiro = 0;
    int segundo = 1;

    print("Sequência de Fibonacci:");
    for(int i = 0; i < sequencia; i++) {
      print("$primeiro");
      int proximo = primeiro + segundo;
      primeiro = segundo;
      segundo = proximo;
    }
  }

}