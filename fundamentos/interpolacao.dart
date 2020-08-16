main() {
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;

  //Sem interpolação
  String frase1 =
      nome + " está " + status + " pq tirou nota " + nota.toString() + "!";
  //Com interpolação
  String frase2 = "$nome está $status pq tirou nota $nota!";
  //usando o dolar como valor literal
  double dinheiro = 2.10;
  String frase3 = "/$dinheiro isso é  dolar kkkk";

  print(frase1);
  print(frase2);
  print(frase3);

  //pra fazer uma operação com interpolação
  print("20 + 30 = ${20 + 30}");
}
