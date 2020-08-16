import 'dart:math'; //tem q importar essa biblioteca pra usar o if/else

main() {
  if (false)
    print(
        'Aprovado'); //setença morta, ela nunca será usada pq o a condição é false, e precisa ser true para imprimi-la
  print('Fim');

  var nota = Random().nextInt(11);
  //vai gerar um numero randomico inteiro até o anterior indicado no .nextInt
  print("Nota selecionada foi $nota");
  if (nota >= 7) {
    print("Aprovado");
  } else if (nota >= 5 && nota < 7) {
    print("Recuperação");
  } else if (nota >= 4 && nota < 5) {
    print("Recuperação + Trabalho");
  } else {
    print("Reprovado");
  }

  //outra forma de fazer isso é
  print("Nota selecionada foi $nota");
  if (nota >= 7) {
    print("Aprovado");
  } else {
    if (nota >= 5 && nota < 7) {
      print("Recuperação");
    } else if (nota >= 4 && nota < 5) {
      print("Recuperação + Trabalho");
    } else {
      print("Reprovado");
    }
  }
}
