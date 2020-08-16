main() {
  var adicao = (int a, int b) {
    return a + b;
  };
  print(adicao(4, 19));

  //FUNÇÃO ARROW
  var subtracao = (int a, int b) => a - b;
  //n tem o return porém ele está implicito
  var divisao = (int a, int b) => a / b;

  print(subtracao(10, 5));
  print(divisao(10, 3));

  var multiplicacao = (int a, int b) => {a * b};
  //vai retornar um Set, pois está entre {}
  print(multiplicacao(2, 4));
  print(multiplicacao(2, 4) is Set);
}
