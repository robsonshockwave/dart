import 'dart:math'; //precisa importar essa biblioteca pra gerar numeros aleatórios

void main() {
  somaComPrint(2, 3);

  int c = 4;
  int d = 5;
  somaComPrint(c, d);

  somaDoisNumerosAleatorios();
}

//só aceita numeros inteiros(int)
void somaComPrint(int a, int b) {
  //utiliza void quando retorna nada
  print(a + b);
  print('executei!!!');
}

void somaDoisNumerosAleatorios() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Os valores sorteados foram: $n1 e $n2');
  print(n1 + n2);
}
