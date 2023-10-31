import 'package:segundo_projeto/segundo_projeto.dart' as segundo_projeto;

void main() {
  // Instância de um objeto (Criar um objeto)
  Pessoa pessoa01 = Pessoa("Lucas", 20, 1.75);
  pessoa01.apresentar();
}


// Exercicio de criar classe e um método
class Pessoa {
  String nome;
  int idade;
  double altura;

  Pessoa(this.nome, this.idade, this.altura);

  void apresentar() {
    print("A pessoa chamada $nome com idade de $idade e altura de $altura");
  }
}
