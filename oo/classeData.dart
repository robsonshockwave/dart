class Data {
  //a primeira letra do nome de uma classe sempre é maiúscula
  //classe é um projeto/molde, e a partir desse consegue criar objetos
  int dia;
  int mes;
  int ano;
}
//a classe no dart define um tipo personalizado, como tem string, int, double.. a classe seria como se fosse um desses

main() {
  var dataAniversario = new Data(); //está instanciando a classe Data
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  print(dataAniversario); //vai printar que é uma instancia de data

  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  //o new não é oobrigatório, e ao invés do var pode usar o próprio nome da classe
  Data dataCompra = Data();
  dataCompra.dia = 11;
  dataCompra.mes = 04;
  dataCompra.ano = 2020;

  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");
}
