import 'package:primeiro_projeto/primeiro_projeto.dart' as primeiro_projeto;
import 'dart:io';

void main() {
  // Tipos de Variáveis
  int idade = 20;
  double altura = 1.75;
  bool programador = true;
  String nome = "Lucas Gabriel Gomes de Oliveira";


  // Type Casting: Conversão de Dados.
  // String para inteiro.
  String inputDados = "1";
  int valor = int.parse(inputDados);
  print("Valor do campo input: $inputDados \n"
      "Valor do campo convertido: $valor");

  // String para double.
  String massaCorporal = "69.5";
  double conversaoMassa = double.parse(massaCorporal);
  print("Valor da massa corporal: $massaCorporal \n"
      "Valor da massa convertida: $conversaoMassa");

  // Int para string
  int numeroQ = 6;
  String numeroString = numeroQ.toString();
  print("Número qualquer: $numeroQ \n"
      "Número qualquer convertido para string: $numeroString");

  // Double para string
  double numeroQualquer = 5.43344;
  String numeroString2 = numeroQualquer.toStringAsFixed(2);
  print("Número qualquer: $numeroQualquer \n"
      "Número qualquer convertido para string: $numeroString2");


  // Listas de valor único
  List<String> integrantesGrupos = ["Lucas", "Gabriel", "Gomes"];
  print("Quantidade de participantes do grupo: " +
      integrantesGrupos.length.toString());
  print("Os integrantes da lista: $integrantesGrupos");

  // Lista de valores dinâmicos
  List<dynamic> pessoa = [nome, idade, altura, programador];

  String fraseCompleta = "Olá me chamo ${pessoa[0]} \n"
      "Tenho ${pessoa[1]} de idade. \n"
      "Tenho ${pessoa[2]} de altura. \n"
      "Estou aprendendo a linguagem de Programação Dart? ${pessoa[3]}. \n";
  print(fraseCompleta);


  // Laço de repetição for
  for (int i = 1; i <= 5; i++) {
    print("Conclui $i volta");
  }

  // Laço de repetição while
  int count = 0;
  while(count <= 10) {
    count++;
    if(count == 5) {
      print("A iteração 5 foi pulada");
      continue; // Utilização da palavra reservada Continue.
    }

    print("Iteração $count");
  }


  // Funções de List ou Array.
  List<String> times = [
    "Tottenham",
    "Liverpool",
    "Manchester City",
    "Arsenal",
    "Chelsea",
    "Manchester United"
  ];
  // print("\n $times");

  // forEach - Executa uma função para cada elemento
  times.forEach((item) => {print("$item")});

  // map - Cria um novo array para cada elemento do array original
  var mapeandoTimes = times.map((time) => {"Classificação do $time"}).toList();
  print(mapeandoTimes);

  // contains - Verifica se existe um item em um array
  bool encontrar = times.contains("Tottenham");
  print(encontrar);

  // sort
  times.sort();
  times.forEach((item) => print("Time: $item"));


  // Utilização da biblioteca de entrada de dados dart:io.
  print("Qual o seu semestre na faculdade?");
  String? input = stdin.readLineSync();
  if(input != null) {
    int semestre = int.parse(input);
    print("Semestre informado foi: $semestre");
    print("Para concluir o curso, restam: ${8 - semestre}");
  } else {
    print("Não há informações!");
  }
}