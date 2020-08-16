main() {
  //Operadores Atribuição (binário/infix)
  double a = 2;
  a = a + 3;
  a += 3;
  a -= 3;
  a *= 3;
  a /= 5;
  a %= 2;

  print(a);

  //Operadores Relacionais (binário/infix) -> O resultado sempre é BOOL
  print(3 > 2);
  print(3 >= 2);
  print(3 < 4);
  print(3 <= 3);
  print(3 != 3);
  print(3 == 3);
  print(3 == '3'); //vai dar false

  print(2 + 5 > 3 - 1 && 4 + 7 != 7 - 4); //juntou os quatro tipos de operações

  //operação lógica bit a bit
  //o 5 em binário seria 101 e o 4 sria 100
  /*101 = 5       Operação AND
    100 = 4
    100 = 4*/
  print(5 & 4); //ou seja, irá imprimir 4
}
