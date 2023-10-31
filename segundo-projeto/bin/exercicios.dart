import 'package:segundo_projeto/segundo_projeto.dart' as segundo_projeto;

void main() {
  // Instância de um objeto (Criar um objeto)
  Pessoa pessoa01 = Pessoa("Lucas", 20, 1.75);
  pessoa01.apresentar();

  Cachorro thor = Cachorro();
  thor.emitirSom();

  ContaBancaria pessoa011 = ContaBancaria(1300, 88888888);
  pessoa011.depositar(400);
  pessoa011.sacar(500);
  ContaPoupanca pessoa012 = ContaPoupanca(1300, 88888888, 20);
  print("O total a pagar de juros de acordo com os meses é ${pessoa012.calcularJuros(3)}");

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


// Exercício 01
class ContaBancaria {
  double saldo;
  int numeroConta;

  ContaBancaria(this.saldo, this.numeroConta);

  void depositar(double valor) {
    print("O valor depositado foi: $valor na conta $numeroConta o saldo da conta é de ${saldo + valor}");
  }

  void sacar(double valor) {
    print("O valor sacado foi de $valor restando na conta $numeroConta o saldo de ${saldo - valor}");
  }
}

class ContaPoupanca extends ContaBancaria{
  double taxaAdicional;

  ContaPoupanca(double saldo, int numeroConta, this.taxaAdicional) : super(saldo, numeroConta);

  double calcularJuros(int quantidade) {
    return quantidade + taxaAdicional;
  }

  double adiconarJuros(double valor) {
    return saldo + valor;
  }
}