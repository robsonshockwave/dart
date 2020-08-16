main() {
  double nota = 6.99.roundToDouble(); //vai dar o valor arredondado
  //double nota = 6.99.truncateToDouble(); //iria tirar as casas decimais
  print(nota);

  print("texto".toUpperCase());

  String s1 = "Robson Arruda";
  //vai imprimir de tal caractere até tal caractere
  String s2 = s1.substring(0, 6);
  String s3 = s2.toUpperCase();
  //o .padRight() vai completar com ! até formar 15 caracteres
  String s4 = s3.padRight(15, "!");

  //poderia fazer tudo que fez acima de uma vez, como o exemplo abaixo
  var s5 = "robson arruda".substring(0, 6).toUpperCase().padRight(15, "!");

  print(s4);
  print(s5);
}
