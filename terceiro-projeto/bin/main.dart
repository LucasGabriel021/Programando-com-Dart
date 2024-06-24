import 'transporte.dart';
import 'viagem.dart';
import 'pessoa.dart';

void main() {
  Pessoa user = Pessoa("Lucas", 21, true, "hujjs");
  Map<String, dynamic> mapUser = user.toMap();
  print(mapUser);

  Viagem chapada = Viagem(locomocao: Transporte.carro);
}