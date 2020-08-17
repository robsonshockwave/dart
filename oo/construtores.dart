class Data {
  int dia;
  int mes;
  int ano;

//aqui ele iria imprimir tudo null, pois os parametros tem os msm nomes dos atributos
/*
  Data(int dia, int mes, int ano) {
    dia = dia;
    mes = mes;
    ano = ano;
  }
*/
//então um mode de fazer seria esse
/*
  Data(int diaInicial, int mesInicial, int anoInicial) {
    dia = diaInicial;
    mes = mesInicial;
    ano = anoInicial;
  }
*/
//outra forma de criar um construtor na qual os atributos recebe os valores com o msm nome seria usando esse maldito do .this
/*
  Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
*/
//outro construtor mais simples que faz o mesmo trabalho é esse
  //Data(this.dia, this.mes, this.ano);
  //ele vai criar um construtor e aquilo que foi passado como parametro automaticamente vai alterar os valores que pertencem a instancia

//tbm pode deixar como opcional os parametros
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  Data dataCompra =
      Data(11, 04, 2020); //isso aqui é um construdor padrão que tem um método()
  //se criou outro construntor na classe que recebe parametros esse Data() não estará mais disponivel
  /*
  dataCompra.dia = 11;
  dataCompra.mes = 04;
  dataCompra.ano = 2020;
  */

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
  print(Data(22, 04, 1999));
}
