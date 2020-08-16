main() {
  for (int a = 0; a < 10; a++) {
    print('a = $a');
  }
  print("Fim!");

  //inclementando de dois em dois
  for (int a = 0; a < 10; a = a + 2) {
    //ou a += 2
    print('a = $a');
  }
  print("Fim!");

  for (int a = 100; a >= 0; a -= 4) {
    print('a = $a');
  }
  print("Fim!");
  //print('a = $a'); //iria dar erro, pois o a só pode ser acessado dentro do for, para acessar ele fora do for tem que fazer como o exemplo abaixo

  int b = 0;
  for (; b < 10; b++) {
    print('b = $b');
  }
  print('[FORA] b = $b');
  print("Fim!");

  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  for (var i = 0; i < notas.length; i++) {
    print("Nota ${i + 1} = ${notas[i]}.");
  }
  print("Fim!");
}
