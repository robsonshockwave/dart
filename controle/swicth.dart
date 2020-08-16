import 'dart:math'; //precisa importar essa biblioteca para usar o switch

main() {
  var nota = Random().nextInt(11);
  print('A nota sorteada foi $nota');

  switch (nota) {
    //switch vai lidar com valores individuais, por exemplo, não dá pra colocar case 9 and 8
    case 10:
    case 9:
      print('Quadro de Honra!');
      print('Parabéns!');
      break; //é obrigatório colocar o break
    case 8:
    case 7:
      print('Aprovado!');
      break;
    case 6:
    case 5:
    case 4:
      print('Recuperação!');
      break;
    case 3:
    case 2:
    case 1:
    case 0:
      print('Reprovado!');
      break;
    default: //caso n encaixe em nenhum dos valores acima
      print('Nota inválida!');
  }
}
