main() {
  Map<String, double> notas = {
    'Robson Arruda': 10,
    'Maria Carolina': 9,
    'Roberto Carlos': 7.2,
    'Jailson Mendes': 8.6,
    'SimNão Silva': 5.0,
  };

  for (String nome in notas.keys) {
    print(
        "Nome do aluno é $nome e a nota é ${notas[nome]}"); //interpolação, pra pegar a nota através do nome
  }

  for (var nota in notas.values) {
    print("A nota é $nota");
  }

  //pegando o nome a nota juntos através do .entries
  for (var registro in notas.entries) {
    print("O(a) ${registro.key} tem nota ${registro.value}");
  }
}
