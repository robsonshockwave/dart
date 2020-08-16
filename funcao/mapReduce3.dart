main() {
  var alunos = [
    //uma lista object
    //uma lista que dentro tem um map
    {'nome': 'Wilson', 'nota': 9.9},
    {'nome': 'Jailson', 'nota': 8.9},
    {'nome': 'Maria', 'nota': 7.9},
    {'nome': 'AlahuAkbar', 'nota': 6.9},
    {'nome': 'Mendes', 'nota': 5.9},
    {'nome': 'Oloco', 'nota': 4.9},
  ];

  //objetivo é calcular a média da turma
  var notasFinais = alunos
      .map((aluno) => aluno[
          'nota']) //através do .map vai selecionar apenas as notas do Map e retornará um object com as mesmas
      .map((nota) => (nota as double)
          .roundToDouble()) //aqui no .map ele irá converter o object pra Iterable<double>, Object não compatível com o operador +
      .where((nota) =>
          nota >= 8); //aqui no .where ele irá filtrar apenas as notas >= 8

  //print(notasFinais.length);
  print(notasFinais);

  var total = notasFinais.reduce((total, nota) =>
      total + nota); //aqui no .reduce ele irá somar todas as notas

  print(
      "*O valor da média da turma especial é: ${total / notasFinais.length}."); //e aqui irá imprimir a média
}
