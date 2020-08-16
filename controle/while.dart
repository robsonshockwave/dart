import 'dart:io';

main() {
  //O while é usado pra quando tem uma indeterminação de quantidade de repetições

  int a = 0;
  while (a < 10) {
    print(a);
    a++;
  }

  var digitado = '';
  while (digitado != 'sair') {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  }
  print('Fim!');

  //fazendo a msm coisa de cima com for //SE FOR FAZER ISSO FAÇA COM WHILE
  digitado = '';
  for (; digitado != 'sair';) {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  }
  print('Fim!');

  //do while vai executar pelo menos uma vez, msm que o digitado tivesse o valor sair
  digitado = '';
  do {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync();
  } while (digitado != 'sair');
  print('Fim!');
}
