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

  Fruta fruta01 = Fruta(nome, peso, corFruta, sabor, diasDaColheita);
  print(fruta01.nome);
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
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int desdeColheita;
  bool? isMadure; // isMadure é uma informação que é calculada, or tanto ela pode ser nula

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.desdeColheita); // This referere ao objeto atual ou instancia da classe
}
