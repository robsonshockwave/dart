main() {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  print(notas);

  //FILTRANDO VALORES A PARTIR DE UMA FUNÇÃO COM WHERE
  //vale a pena usar essa função
  bool Function(double) notasBoasFn = (double nota) => nota >= 7;
  var notasBoas = notas.where(notasBoasFn);
  //esse .where vai percorrer o array notas e associar ele a função notasBoasFn
  print(notasBoas);

  //ou poder fazer com o var ao invés do bool Function()
  var notasMelhoresFn = (double nota) => nota >= 8.9; //true ou false
  var notasMelhores = notas.where(notasMelhoresFn);
  print(notasMelhores);
}
