main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];

  //objetivo é somar todas as notas
  var total1 = 0.0;
  //vai dar problema nessa inferência se colocar apenas 0, pois colocando só o 0 como valor irá inferir q total é
  //do tipo int e precisamos do tipo double pra somar os valores, então para isso colocamos 0.0

  for (var nota in notas) {
    total1 += nota;
  }
  print(total1);

  //usando com a função .reduce()
  //esse reduce pode transformar uma lista em objeto, em um número, entre outros... ele é mais "forte" que o .map()
  var total2 = notas.reduce(
      somar2); //no reduce só pode passar funções com parâmetro desse desse tipo double reduce(double a, double b) //esse ultimo parametro n precisa necessariamente ser do tipo double
  print(total2);

  var nome = ['Ana', 'Silveria', 'Amarga', 'Leiloada'];
  var nomeComVirgula = nome.reduce(juntar);
  print(nomeComVirgula);
  //ou poderia passar direto
  //print(nome.reduce(juntar));
  print(nomeComVirgula.runtimeType);
}

//essa função tem que retornar o msm tipo doq o primeiro parâmetro
double somar1(double a, double b) {
  //ele pegou o primeiro elemento do array e colocou no a, dps o segundo e colocou no b e somou a + b,
  //dps o a assumiu o valor da soma e o b pegou o terceiro elemento, e assim por diante... complexo isso kkkk
  print("$a $b");
  return a + b;
}

//refazendo a função de cima de modo que fique mais claro, leia o de cima
double somar2(double acumulador, double elemento) {
  //esse ultimo parametro n precisa necessariamente ser do tipo double, mas nesse exercicio precisa kkk
  print("$acumulador $elemento");
  return acumulador + elemento;
}

//criando uma função que retorna nomes separados por virgula, vai gerar um string
String juntar(String acumulador, String elemento) {
  print("$acumulador => , $elemento");
  return "$acumulador, $elemento";
}
