import '../model/carroGettersSetters.dart';

main() {
  var c1 = new Carro(300, 20);

  while (!c1.estaNoLimite()) {
    //ou poderia ser c1.estaNoLimite() == false
    print("A velocidade atual é ${c1.acelerar()} Km/h.");
  }

  print("O carro chegou no máximo com velocidade ${c1.velocidadeAtual} Km/h");

  while (c1.velocidadeAtual > 0) {
    print("O carro parou com a velocidade de ${c1.frear()} Km/h.");
  }
  //ou
  /*
  while (!estaFreado()) {
    print("O carro parou com a velocidade de ${c1.frear()} Km/h.");
  }
  */

  c1.velocidadeAtual =
      500; //inconsistencia //não consegue acessar pq n foi criado o método set, n vai acontecer nada pq n passou no setter
  c1.velocidadeAtual = 5; //agr dará certo pq passou no setter

  print("O carro está parado na velocidade de ${c1.velocidadeAtual} Km/h.");
}
