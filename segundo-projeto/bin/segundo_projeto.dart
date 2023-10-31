import 'package:segundo_projeto/segundo_projeto.dart' as segundo_projeto;

void main() {
  // Funções
  String nome = "Laranja";
  double peso = 100.2;
  String corFruta = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDaColheita = 40;
  //bool isMadura = funcEstaMadura(diasDaColheita);

  estaMadura("Uva", 40, cor: "Roxa");
  funcQuintanda(nome: "Pera", peso: 3.2, sabor: "Azedo", cor: "Verde");

  int quantosDias = funcQuantosDiasMadura(diasDaColheita);
  print("Dias para a fruta esta madura $quantosDias");

  // Fruta fruta01 = Fruta(nome, peso, corFruta, sabor, diasDaColheita);
  // print(fruta01.nome);
  //
  // Fruta fruta02 = Fruta.nomeado(nome: "Uva", peso: 2.1, cor: "Roxa", sabor: "Doce", desdeColheita: 40);
  // print(fruta02.nome);
  //
  // Fruta fruta03 = Fruta(nome, peso, corFruta, sabor, diasDaColheita);
  // fruta03.estaMadura(30);

  Fruta fruta04 = Fruta("Pera", 5.4, "Verde", "Azeda", 30);
  fruta04.verAlimento();
  fruta04.fazerSuco();

  Legumes legume01 = Legumes("Mandioca", 2.4, "Marrom", true);
  legume01.cozinhar();
}

/*
* Tipos de parametros
* Posicionais Obrigatórios - Os argumentos passados para uma função devem corresponder espectivamente o s parametros
* Nomeados Opicionais - Como o nome sugere eles são opcionais, sua utilização sa dá por chaves {tipo nome: "teste"}
* Parâmetros com "default" - Quando informado o valor de um parametro, caso no argumento não seja informado
* Modificador "required" - Torna o parametro opcional obrigatório*/

void estaMadura(String nome, int dias, {String cor = "Laranja"}) { // => Nomeado Posicional
  if(dias >= 40) {
    print("A $nome esta madura e sua cor e $cor");
  } else {
    print("A $nome não esta madura e sua cor e $cor");
  }

  if(cor == null) {
    print("A cor é nula");
  } else {
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if(dias >= 40) {
    return true;
  } else {
    return false;
  }
}

void funcQuintanda({required String nome, required double peso, String? cor, String sabor = "doce"}) {
  print("Nome e $nome");
  print("Peso e $peso");
  print("Cor e $cor");
  print("Sabor e $sabor");
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - 30;
  return quantosDiasFaltam;
}

// Classes
// Superclasse
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor); // This referere ao objeto atual ou instancia da classe

  void verAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

// Subclasses

class Fruta extends Alimento { // Extend herda características
  String sabor;
  int desdeColheita;
  bool? isMadure; // isMadure é uma informação que é calculada, portanto ela pode ser nula

  // Cosntrutor Padrão
  Fruta(String nome, double peso, String cor, this.sabor, this.desdeColheita) : super(nome, peso, cor); // Método super() é utilizado para chamar propriedades da Superclasse

  // Construtor com operações
  Fruta.maisculo(String nome, double peso, String cor, this.sabor, this.desdeColheita) : super(nome, peso, cor) {
    nome = nome.toUpperCase();
  }

  // Construtor com Pârametros Nomeados
  Fruta.nomeado({required String nome, required double peso, required String cor, required this.sabor, required this.desdeColheita}) : super(nome, peso, cor);

  // Método em uma classe
  void estaMadura(int qtdDiasMaduraFruta) {
    isMadure = desdeColheita >= qtdDiasMaduraFruta;
    // Equivale a condição abaixo
    // if(dias >= 40) {
    //   return true;
    // } else {
    //   return false;
    // }
    print("A $nome foi colhida há $desdeColheita dias, e precisa de $qtdDiasMaduraFruta para ficar poder comer, a fruta está comestivel? Resposta: $isMadure");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome!");
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar) : super(nome, peso, cor);

  void cozinhar() {
    if(isPrecisaCozinhar) {
      print("O legume $nome precisa cozinhar!");
    } else {
      print("O legume $nome não precisa cozinhar");
    }
  }
}

class Vegetal extends Alimento {
  bool isOrganico;

  Vegetal(String nome, double peso, String cor, this.isOrganico) : super(nome, peso, cor);

  void consumir() {
    print("O vegetal $nome foi consumido");
  }
}

class Citrica extends Fruta {
  int nivelAzedo;

  Citrica(String nome, double peso, String cor, String sabor, int desdeColheita, this.nivelAzedo) : super(nome, peso, cor, sabor, desdeColheita);

  void existeRefri(bool existe) {
    existe == true ? print("Existe refirgerante da fruta $nome") : print("Não existe refrigerante desta fruta $nome"); // Operador ternário
  }
}

class Nozes extends Fruta{
  int porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor, int desdeColheita, this.porcentagemOleoNatural) : super (nome, peso, cor, sabor, desdeColheita);
}