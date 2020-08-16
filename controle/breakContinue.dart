main() {
  for (int a = 0; a < 10; a++) {
    if (a == 6) {
      break; //quando chegar no break ele vai sair do laço for
    }
    print(a);
  }

  print('Depois do laço for #01');

  for (int a = 0; a < 10; a++) {
    if (a % 2 == 0) {
      continue; //ele faz com que apenas aquela repetição que está acontecendo naquele momento seja interrompida e vá para prócima repetição
      //ele não vai sair do laço
    }
    print(a); //vai imprimir apenas os valor ímpares
  }

  print('Depois do laço for #02');
}
