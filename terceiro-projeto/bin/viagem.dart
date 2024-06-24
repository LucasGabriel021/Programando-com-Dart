import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DHJSSJ3443";
  Set<String> registrosVisitados = {};
  double _dinheiro = 0;
  Transporte locomocao;

  Viagem({required this.locomocao});

  void printCodigo() {
    print(codigoTrabalho);
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
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
}