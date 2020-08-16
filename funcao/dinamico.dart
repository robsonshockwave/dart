main() {
  juntar1(1, 9);
  print(juntar1(1, 9));

  juntar1('Bom ', 'dia!!!');
  juntar1('O valor de PI é ', 3.1415);

  String resultado = juntar2('Esse é o número ', 2);
  print(resultado.toUpperCase());
}

//os dois são do tipo dynamic, msm n colocando o dynamic na frente eles vão entender que é do tipo dynamic
dynamic juntar1(dynamic a, b) {
  print(a.toString() + b.toString()); //irá juntar e não somar
  return a.toString() + b.toString(); //irá juntar e não somar
}

//esse String garante que o resultado será uma string
String juntar2(dynamic a, b) {
  print(a.toString() + b.toString()); //irá juntar e não somar
  return a.toString() + b.toString(); //irá juntar e não somar
}
