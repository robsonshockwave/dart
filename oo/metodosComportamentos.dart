class Data {
  int dia;
  int mes;
  int ano;

  //dentro da classe não precisa passar parametros na função, se os comportamentos estão dentro da classe e nela jé tem os atributos
  //que serão passados como parametro pra esse comportamente, sendo assim não precisará passar

  /*
  obterFormatada() { //desvantagem de colocar dentro dessa função o print é que não vai conseguir usar essa data formatada pra nada
    print("$dia/$mes/$ano");
  }
  */

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  /*
  String toString() {
    return 'Qualquer coisa!';
  }
  */

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;
  //print(dataAniversario);
  //print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  //dataAniversario.obterFormatada(); //através do método obterFormatada() com print

  Data dataCompra = Data();
  dataCompra.dia = 11;
  dataCompra.mes = 04;
  dataCompra.ano = 2020;
  //print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  //dataCompra.obterFormatada(); //através do método obterFormatada() com print
  //se tivesse com o método obterFormatada() com print e fizesse isso iria imprimir null, pois está recebendo nada
  //String d1 = dataCompra.obterFormatada();
  //print("A data da compra é $d1");

  //agr sim daria certo, pois o método está retornando uma string
  String d1 = dataCompra.obterDataFormatada();
  print("A data da compra é $d1");
  //ou poderia imprimir desse jeito sem armazenar em uma variável
  print("A data da compra é ${dataCompra.obterDataFormatada()}");

  print(
      dataCompra); //dentro da classe pode criar um método (toString(){}) que retorna uma string ou outro método da classe
  //daí aqui não irá imprimir mais instance of 'Data' e sim oq está retornando o método toString()

  //dentro do print ele vai chamar o toString caso n seja uma string
  print(dataCompra
      .toString()); //como lá está retornando um string não precisaria fazer isso

  /*
  Data d2 = dataCompra; //aqui pode ser do tipo data pois não está recebendo algo com .toString()
  String s1 = dataCompra.toString(); //nesse caso como está chamando o .toString() o s1 não poderia ser do tipo Data
  */
}
