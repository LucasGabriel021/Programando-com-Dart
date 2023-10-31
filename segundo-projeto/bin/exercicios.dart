import 'package:segundo_projeto/segundo_projeto.dart' as segundo_projeto;

void main() {
  // Instância de um objeto (Criar um objeto)
  Pessoa pessoa01 = Pessoa("Lucas", 20, 1.75);
  pessoa01.apresentar();

  Cachorro thor = Cachorro();
  thor.emitirSom();
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

// Exerciciio de classe Abstrata e prática de Polimorfismo
abstract class Animal {
  void emitirSom();
}

class Cachorro implements Animal {
  @override
  void emitirSom() {
    print("Au Au, acordar a vizinhança");
  }
}

// OBS: Tanto extend quanto implements podem ser utilizados em métodos, mas apenas métodos.

class Gato extends Animal {
  @override
  void emitirSom() {
    print("Miau, acordar a vizinhança");
  }
}

