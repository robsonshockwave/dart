import 'dart:math'; //precisa importar essa biblioteca pra gerar numeros aleatórios

main() {
  int n1 = numeroAleatorio1(100);
  print(n1);

  /*int n2 = numeroAleatorio1(); //vai dar erro, pois é obrigatório passar uma parâmetro nesse caso
  print(n2);*/

  int n2 = numeroAleatorio2(); //agr não dará mais erro
  print(n2);

  imprimirData(10, 12, 2020);
  imprimirData(10, 12);
  imprimirData(10);
}

int numeroAleatorio1(int maximo) {
  return Random().nextInt(maximo);
}

//fazendo a função acima mas com parâmetros opcionais
//o parametro ficou como opcional e se foi passado nada ele assumirá o valor padrão que no caso ali é 11
int numeroAleatorio2([int maximo = 11]) {
  return Random().nextInt(maximo);
}

//ESSE É UM EXEMPLO DE PARAMETRO POSICIONAL
imprimirData(int dia, [int mes = 1, int ano = 1970]) {
  //o dia é obrigatorio passar como parametro
  print("$dia/$mes/$ano");
}
