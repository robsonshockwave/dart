main() {
  var alunos = [
    //uma lista object
    //uma lista que dentro tem um map
    {'nome': 'Wilson', 'nota': 9.9},
    {'nome': 'Jailson', 'nota': 8.9},
    {'nome': 'Maria', 'nota': 7.9},
    {'nome': 'AlahuAkbar', 'nota': 6.9},
    {'nome': 'Mendes', 'nota': 5.9},
    {'nome': 'Oloco', 'nota': 4.9},
  ];

  //transformando a lista de map em "lista" de strings
  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  var nomes = alunos.map(
      pegarApenasONome); //esse.map serve pra transformar um elemento em outro
  //Não confunda o Map que é o tipo com a função .map, a ultima serve pra mapear um elemento, transformar um elemento em outro
  print(nomes);
  print(nomes is List);
  print(nomes is Map);
  print(nomes is String);
  print(nomes.runtimeType);
  //a função .map transformou a lista com Map em um MappedListIterable<Map<String, Object>, String>
  //ela transformou na abstração uma lista com apenas elementos strings, pq na função pegou apenas os 'nome' que são strings

  int Function(String) qtdDeLetrasFn = (texto) => texto
      .length; //usou o método explícito, mas podia usar o var, que seria var qtdDeLetrasFn = ...
  var qtdDeLetras = nomes.map(qtdDeLetrasFn);
  print(qtdDeLetras);
  //colocando o mouse no teste vai ver que é List<String> e é esse String que devemos colocar na função(dentro do Function(String)) pra transformar em inteiros(por isso o int antes do Function)
  var teste = ['Jose', 'Ana', 'Mairia'];
  var testeQtdLetras = teste.map(qtdDeLetrasFn);
  print(testeQtdLetras);

  //poderia ter feitos os dois primeiros exemplos acima de uma vez (com dois .map())
  var quantidadeDeLetras = alunos.map(pegarApenasONome).map(qtdDeLetrasFn);
  print(quantidadeDeLetras);

  //pegando os numeros de cada nome e multiplicando por 2
  int Function(int) dobro = (numero) => numero * 2;
  var quantidadeDeLetrasDobro =
      alunos.map(pegarApenasONome).map(qtdDeLetrasFn).map(dobro);
  print(quantidadeDeLetrasDobro);
}
//a função .WHERE() tem uma LISTA de oito elementos, quando passar a lista pelo where, pode receber uma lista do mesmo tamanho,
//caso todos os elementos sejam true passe pelo critério, mas tbm pode receber nenhum elemento, pois nenhum pode passar pelo where
//Isso q eu disse acima só serve pra .where()

//já na função .MAP() sempre terá uma lista de mesmo tamanho, se passou uma lista de oito elementos pra uma função map o resultado será uma lista de 8 elementos
//a função map serve pra mapear UM elemento em outro elemento, exemplo: tem uma lista de strings e quer mapear pra uma lista de inteiros, pode usar a função map pra mapear uma string e um inteiro
//outro exemplo: tem uma lista de nomes e quer ter uma outra lista que vai dizer quantas letras cada nome nas lista de nomes
//.map é um exemplo de uso de passar uma função como parametro pra outra função
