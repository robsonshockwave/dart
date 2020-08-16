import 'dart:io';

main() {
  //Operadores ternários
  stdout.write("Está chovendo? (s/N)");

  final resposta1 = stdin.readLineSync();
  //bool estaChovendo = resposta1 == "s" ? true : false; //poderia fazer assim ou como feito abaixo
  //se a resposta for s, o estaChovendo receberia o valor boleano true
  bool estaChovendo = resposta1 == "s";

  //outro jeito de fazer
  print("Está frio? (s/N)");
  final estaFrio = stdin.readLineSync() == "s";

  //está fazendo uma atribuição condicional, caso alguma seja true irá imprimir "Ficar em casa"
  String resultado = estaChovendo && estaFrio ? "Ficar em casa" : "Sair!!!";
  print(resultado);
  //poderia fazer assim tbm
  print(estaChovendo && estaFrio ? "Azarado!" : "Sortudo");
}
