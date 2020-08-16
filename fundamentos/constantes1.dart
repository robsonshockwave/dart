import 'dart:io';

main() {
  //Área da circunferência = PI * raio * raio

  //para pegar um dado do usuário precisa importar a biblioteca e fazer isso
  String texto = stdin.readLineSync();
  print("O valor digitado é: " + texto);

  //o const só serve pra pegar valores já definidos no programas, ou seja, se for pro usuário digitar algo e q n possa mudar dps tem q usar o final
  const PI = 3.1415;
  const duasVezesPI = 2 * PI; //entenda
  //esse stdout.write vai imprimir a mensagem sem colocar o \n no final
  stdout.write("Informe o valor do raio: ");
  var entradaDoUsuario = stdin.readLineSync();
  //convertendo uma string q o usuario digitou por um valor double
  final raio = double.parse(entradaDoUsuario);
  //esse final é uma constante, ou seja, n pode mudar depois o valor dela

  final area = PI * raio * raio;
  print("O valor da área digitado é: " + area.toString());
}
