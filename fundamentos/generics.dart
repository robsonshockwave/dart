main() {
  //lista dinamica/heterogenea
  var listaCoisas = [
    'banana',
    true,
    123,
    4.56,
    [1, 2, 3]
  ];

  //se for especificar se é de string ela n poderá ser como a de cima
  List<String> frutas = ['banana', 'maçã', 'laranja'];
  //frutas.add(123); //dará erro, óbvio, pois é number
  frutas.add('melão'); //dará certo

  Map<String, double> salarios = {
    //o var tbm iria inferir q seria string e double, mas melhor assim né
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiario': 400.00,
    //'secretario': '1000,00' //aqui daria erro, pois o valor está como string e não double
  };

  print(salarios);
}
