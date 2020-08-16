main() {
  saudarPessoa1("Felizberto", 23);
  //saudarPessoa(47, "Maria"); //daria erro se passase assim, pois estaria violando as ordens dos parametros

  saudarPessoa2(idade: 47, nome: "Maria"); //aqui não daria mais erros
  saudarPessoa2(nome: "Jailson", idade: 58);

  imprimirData1(ano: 2020, mes: 12);
  imprimirData1(ano: 2021, dia: 10, mes: 12);
  imprimirData1();

  imprimirData2(25, ano: 1973, mes: 12);
}

saudarPessoa1(String nome, int idade) {
  print("Olá $nome nem parece que vc tem $idade anos.");
}

//pra tornar os parametros nomeados só precisa colocar os parametros dentro do {}
saudarPessoa2({String nome, int idade}) {
  print("Olá $nome nem parece que vc tem $idade anos.");
}

//pode fazer parametros opcionais e nomeados juntos
imprimirData1({int dia, int mes = 1, int ano = 1970}) {
  print("$dia/$mes/$ano");
}

//misturando parametros posicionais com nomeados
imprimirData2(int dia, {int mes = 1, int ano = 1970}) {
  print("$dia/$mes/$ano");
}

//A ÚNICA VANTAGEM DOS NOMEADOS É QUE TEM UMA CLAREZA MAIOR, ELE É MTTTT USADO
