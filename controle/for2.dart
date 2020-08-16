//for in
main() {
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  //var notas = {8.9, 9.3, 7.8, 6.9, 9.1}; //iria fazer a msm coisa com Set

  //a variavel nota irá receber o valor do elemento for a cada repetição, substituindo o recebido anteriormente
  for (var nota in notas) {
    print("O valor da nota é $nota.");
  }

  //imprimir uma lista que dentro tem outra lista, ou seja, uma matriz
  var coordenadas = [
    [1, 3],
    [9, 1],
    [19, 23],
    [2, 14],
  ];

  for (var coordenada in coordenadas) {
    for (var ponto in coordenada) {
      print("Valor do ponto é $ponto");
    }
  }
}
