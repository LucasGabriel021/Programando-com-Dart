import 'package:exercicio_function/exercicio_function.dart' as exercicio_function;

void main() {
  funcRecursiva(0, 10);

  String nomeFruta = "Laranja";
  double pesoFruta = 2.3;
  int diasDesdeColheita = 10;
  int diasFicarMadura = 20;
  bool isMadure = estaMadura(diasColheita: diasDesdeColheita, diasMadura: diasFicarMadura);
  // print(isMadure);

  exibirFrase(isMadure, nome: nomeFruta, peso: pesoFruta, diasColheita: diasDesdeColheita, diasMadura: diasFicarMadura);
}

bool estaMadura({required int diasColheita, required int diasMadura}) {
    if(diasColheita >= diasMadura) {
      return true;
    } else {
      return false;
    }
}

void exibirFrase(bool madure, {required String nome, required double peso, required diasColheita, required diasMadura}) {
  String estado = madure ? "madura" : "nao esta madura";
  print("A $nome pesa $peso gramas! Ela foi colhida há $diasColheita dias e precisa de $diasMadura para amadurecer, logo a $nome $estado");
}

// Teste de função recursiva
void funcRecursiva(int contador, int condicaoParada) {
  print("Estamos na $contador iteracao");
  if(contador >= condicaoParada) {
    return;
  }
  funcRecursiva(contador + 1, condicaoParada);
}