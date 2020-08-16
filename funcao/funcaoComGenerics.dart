main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];
  var teste = [3, 'banana', 7, 'maçã', 45, 'acerola', 1];

  print(segundoElementoV1(lista));

  //criando uma função generics
  int segundoElemento = segundoElementoV2<int>(lista);
  print(segundoElemento);
  //assim ele tbm vai entender que pelo tipo de parametros que vc passou o return será de inteiros
  segundoElemento = segundoElementoV2(lista);
  print(segundoElemento);

  //se tiver inteiros, strings ou outra coisas ele retornará algo do tipo Object
  var testandoTeste = segundoElementoV3(teste);
  print(testandoTeste);
}

//criei uma função que vai retornar o segundo elemento da lista
//vai retornar um valor generico do tipo Object, ele vai cobrir todos os tipos da linguagem Dart (int, double, String...)

//Não é uma função genérica
Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

//É uma função genérica, usa generics
//Irá criar uma função em que o tipo de retorno será definido ao enviar, por isso do termo generics
E segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

E segundoElementoV3<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}
