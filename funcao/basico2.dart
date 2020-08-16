import 'dart:math'; //precisa importar essa biblioteca pra gerar numeros aleatórios

main() {
  int resultado =
      somar(2, 3); //só pode fazer isso se a função tiver algum return
  resultado *= 2;
  print("O dobro do resultado é $resultado");

  //já pode chamar o print com função dentro, só as que retornam algo
  print(somarNumerosAleatorios());
  print("O resultado é ${somarNumerosAleatorios()}"); //interpolando
}

//pra retornar algo do tipo inteiro precisa colocar o int antes
int somar(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);

  return n1 + n2;
}
