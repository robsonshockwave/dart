main() {
  int a = 3;
  int b = 4;

  //a = a + 1;
  //a += 1;
  a++; //Operador unário, POSFIX
  --a; //Operador unário, PREFIX

  print(a);

  print(a++ == --b);
  //o mais ++ ou -- antes do int é processado antes da comparação, se tiver depois é processado depois da comparação

  print(a == b);

  print(!true);
  print(!false);

  bool x = false;
  print(!x);
}
