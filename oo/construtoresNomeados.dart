class Data {
  int dia;
  int mes;
  int ano;

  //esse tipo de construtor só com o nome da classe só pode serdeclarado uma vez na classe
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  //Um exemplo de construtor nomeado
  //sempre colocar o . e em seguinda o nome do construtor nomeado
  //construtores nomeados podem ser declarados várias vezes na classes
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

  //pode criar um construtor nomeado que tem um corpo
  /* Data.ultimoDiaDoAno(int ano) {
    dia = 31;
    mes = 12;
    this.ano = ano;
  } */
  //ou poderia fazer assim
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  Data dataCompra = Data(11, 04, 2020);

  String d1 = dataCompra.obterDataFormatada();
  print("A data da compra é $d1");
  print("A data da compra é ${dataCompra.obterDataFormatada()}");

  print(dataCompra);
  //dentro do print ele vai chamar o toString caso n seja uma string
  print(dataCompra
      .toString()); //como lá está retornando um string não precisaria fazer isso

  //com os parametros opcional pode criar classes de formas diferentes
  print(new Data()); //vai imprimir 1/1/1970
  print(Data()); //não precisa colocar o New necessariamente
  print(Data(22));
  print(Data(22, 04));

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");

  print(Data.ultimoDiaDoAno(2023));
}
