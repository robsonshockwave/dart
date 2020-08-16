main() {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  print(notas);

  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  //tbm poderia ter feiro isso (passar a função no parametro), mas o melhor é o de cima msm
  //var somenteNotasBoas = filtrar(notas, (double nota) => nota >= 7.5);
  print(somenteNotasBoas);

  var nomes = [
    'Ana',
    'Rafaella',
    'Jurecleusa',
    'Felisbina',
    'Maria',
    'Bia',
    'Via'
  ];
  print(nomes);
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  var nomesGrandes = filtrar<String>(nomes, nomesGrandesFn);
  //ou
  //var nomesGrandes = filtrar<String>(nomes, (String nome) => nome.length >= 5);
  print(nomesGrandes);
  //ou poderia imprimir direto
  //print(filtrar(nomes, nomesGrandesFn));
}

//FUNÇÃO FILTER
//essa função vai retornar uma lista, por isso o List antes
//ela vai receber uma List e uma função que retorna um resultado boleano, essa função que vai servir basicamente pra filtrar
//List<double> filtrar(List<double> lista, bool Function(double) fn) {
//  List<double> listaFiltrada = [];
//    for (double elemento in lista) {
List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  //precisa colocar o <E> dps do nome da função
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      //se esse fn(elemento retornar true entra no if)
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}
