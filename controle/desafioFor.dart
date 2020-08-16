/*
#
##
###
####
#####
######

Use o laço FOR, mas não pode controlar o laço usando valor numérico
*/

main() {
  //usando valor numérico
  var valor1 = '#';
  for (int i = 0; i < 6; i++) {
    print(valor1);
    valor1 += '#';
  }

  //sem usar valor numérico
  var valor2 = '';
  for (; valor2 != '######';) {
    valor2 += '#';
    print(valor2);
  }
  //ou
  for (var valor3 = '#'; valor3 != '#######'; valor3 += '#') {
    print(valor3);
  }
}
