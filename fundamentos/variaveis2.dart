main() {
  //o var vai inferir o tipo que está recebendo, se é numérico, uma string, boleano...
  var n1 = 2;
  var n2 = 4.56;
  var texto = "O valor da some é: ";
  //texto = 3; //irá dar erro, pois o 3 é um número e a variável texto só aceita string, pq já inferiu que o texto é um string quando colocou a frase anteriormente

  print(n1 + n2); //o dart vai inferir que as variaveis são do tipo inteiro

  //print(texto + n1 + n2); //irá dar erro
  //para isso faça
  //vai converter o valor de n1 + n2 depois de ter feito a operação para string
  print(texto + (n1 + n2).toString());

  //pra saber o tipo da variável
  print(n1.runtimeType); //vai imprimir que é int
  print(texto.runtimeType); //vai imprimir que é string
  print(n1 is int); //pra verificar se o n1 é int, irá imprimir true
  print(texto is String); //irá imprimir true

  var t1 = "Olá!";
  var t2 = "Dart!!!";

  print(t1 + t2);
}
