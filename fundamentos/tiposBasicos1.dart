/*
  - Números (int e double)
  - String (String)
  - Booleano (bool)
  - Dinâmico (dynamic)
*/

main() {
  int n1 = -3;

  double n2 = (-5.67).abs(); //esse .abs() vai tornar o valor em positivo
  //tbm poderia ter feito isso
  //n2.abs();

  //converte a partir de um valor do tipo string pra double
  double n3 = double.parse("12.765");

  //o num serve pra receber valores inteiros ou decimais, praticamente é a msm coisa que o double, ele é o pai do int e do double
  num n4 = 6;

  //o resultado vai ser retornado no tipo que vai ser capaz de armazenar mais informações, que no caso ali é o double
  print(n1.abs() + n2 + n3 + n4);

  n4 = 6.7;
  print(n1.abs() + n2 + n3 + n4);

  String s1 = "Bom";
  String s2 = "dia";
  //.toUpperCase() vao transformar todas as letras daquela string em maiúsculas
  print(s1 + s2.toUpperCase() + "!!!");

  bool estaChovendo = true;
  bool muitoFrio = false;

  //OU: vai dar true, pois uma é true
  print(estaChovendo || muitoFrio);
  //E: vai dar false, pois uma é false
  print(estaChovendo && muitoFrio);

  //dynamic serve pra não colocar tipo, ou seja, se é string futuramente poderá ser double, dps bool...
  dynamic x = "Um texto bem legal";
  print(x);

  x = 123;
  print(x);

  x = false;
  print(x);
}
