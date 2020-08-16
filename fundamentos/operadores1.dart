main() {
  //Operadores Aritméticos
  //são operadores binarios, é INFIX, ou seja, o operador está no meio dos operandos
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  //ou poderia fazer assim tbm (literal)
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b); //o resto
  //vai aplicar a precedência
  print(a + b * a - b / a);

  //Operadores Lógicos
  bool eFragil = true;
  bool eCaro = false;

  print(eFragil && eCaro); //E
  print(eFragil || eCaro); //Ou
  print(eFragil ^ eCaro); //Ou exclusivo = se apenas um dos dois for verdadeiro
  print(
      !eFragil); //Negação(Not) = vai transformar no contrário, ESSE É UNÁRIO, PREFIX
  print(!!eCaro); //Negação da Negação, vai voltar a ser false
}
