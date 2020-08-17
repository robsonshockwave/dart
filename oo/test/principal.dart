import '../model/pessoa.dart';
//se o outro arquivo estiver na mesma pasta não precisa colocar o ./ ou ../pasta/
//se o model estivesse dentro de teste daí não colocaria ../model/pessoa.dart e sim ./model/pessoa.dart ou model/pessoa.dart

main() {
  var p1 = Pessoa();
  p1.nome = 'Robson';

  print('O nome da pessoa é ${p1.nome}');
}
