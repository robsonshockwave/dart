main() {
  int a = 2;

  //criando uma variavel que aceita uma função
  //tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  //posso fazer isso pq a função que define está recebendo outra função com os msm tipos de parametros(dois int)
  print(soma1(2, 3));

  //FUNÇÃO ANÔNIMA
  //criando uma outra variavel recebendo uma função anônima
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  }; //msm criando uma função anônima precisa colocar o ;
  print(soma2(9, 8));

  //tbm pode criar uma função for inferencia, daí n precisa colocar aquele Function()
  /*
  var soma3 = (x, y) {
    return x + y;
  };
  ou */
  var soma3 = (int x, [int y = 1]) {
    return x + y;
  };
  print(soma3(2, 1));
}

int somaFn(int a, int b) {
  return a + b;
}
