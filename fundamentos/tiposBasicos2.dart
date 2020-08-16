/*
  - Lista (List)
  - Set
  - Map
*/

main() {
  //List aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael']; //aceita repetição a List e qualquer tipo de elemento
  //ou pode criar uma lista com var tbm
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Carlos'];
  aprovados.add('Robson'); //adicionando mais um elemento na List
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2)); //uma forma de acessar um indice do lista

  //outra forma de acessar um indice do lista, se colocasse o [4] iria dar erro, pois n tem elemento nesse indice
  print(aprovados[0]);
  print(aprovados.length); //pra saber o tamos da lista

  //O Map é uma estrutura chave valor
  var telefones = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (35) 12345-6789',
    'Lol': '+55 (95) 33333-4444',
    //como tem dois João o ultimo valor irá sobescrever o anterior
    'João': '+55 (77) 77777-7777',
  };

  print(telefones is Map);
  print(telefones);
  print(telefones['João']); //acessando uma chave do map
  print(telefones.length); //pra saber o tamos da lista
  print(telefones.values); //só irá dar os valores
  print(telefones.keys); //só irá dar as chaves
  print(telefones.entries); //pega chave e valor ao mesmo tempo

  //Set
  //não precisam necessariamente de uma ordem pré definida e não aceita repetição
  var times = {'Vasco', 'Cruzeiro', 'Botafogo', 'Goiás'};
  //print(times[0]); //dará erro, n tem como acessar assim
  print(times is Set);
  //print(times.union(outro conjunto)); //irá te entregar outro conjunto com valores desses dois conjuntos

  //adicionando um time depois
  times.add('Palmeiras');
  times.add('Palmeiras');
  //como todos os valores do Set é string não permitirá fazer isso(colocar um valor numerico ou boleano), porém se o set fosse heterogêneo daria
  //time.add(123); //daria erro

  print(times.length);

  //pra verificar se está contindo dentro do Set
  print(times.contains('Vasco'));

  print(times.first); //imprimindo o primeiro
  print(times.last); //imprimindo o último

  //MELHOT TER UM LIST, MAP E SAT HOMOGÊNEOS DOQ HETETOGÊNEOS, FICA A DICA
}
