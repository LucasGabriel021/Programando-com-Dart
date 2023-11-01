import 'package:terceiro_projeto/terceiro_projeto.dart' as terceiro_projeto;

void main() {
  escolherTransporte(Transporte.carro);
}

void escolherTransporte(Transporte locomocao) {
  switch(locomocao) {
    case Transporte.onibus:
      print("O transporte será um ônibus");
      break;

    case Transporte.carro:
      print("O transporte será um carro");
      break;

    case Transporte.bicicleta:
      print("O transporte será uma bicicleta");
      break;

    case Transporte.metro:
      print("O transporte será um metro");
      break;

    case Transporte.moto:
      print("O transporte será uma moto");
      break;

    default:
      print("Vá a pé");
      break;
  }
}

// Classe enum
enum Transporte {
  onibus,
  carro,
  bicicleta,
  metro,
  moto
}
