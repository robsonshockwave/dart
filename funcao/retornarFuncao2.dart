main() {
  print(somaParcial(2)(10));

  //pode fazer assim tbm, entenda
  var SomaCom10 = somaParcial(10);
  print(SomaCom10(3));
  print(SomaCom10(7));
  print(SomaCom10(19));
}

//ela recebe uma um inteiro, por isso do (int) no Function, e ela vai retornar uma função com um inteiro tbm por isso do int antes e do Function()
int Function(int) somaParcial(int a) {
  int c = 0;
  return (int b) {
    //essa função anônima tem acesso aos parametros ou qualquer outra variavel criada no lado de fora
    return a + b + c;
  };
}
