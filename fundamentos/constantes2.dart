main() {
  final lista = ['Ana', 'Lia', 'Robson'];
  lista.add('Rebeca'); //msm a lista sendo final pode adicionar
  //lista = ["Banana", "Manga", "Uva"]; //se fizesse isso daria erro, só daria certo se lista fosse var
  print(lista);

  final lista2 = const ['Intau', 'Antones', 'Mirantes'];
  //lista2.add('Jozeba'); //como foi definido o const antes do valores da lista daria erro se fizesse isso, nunca mais pode adicionar e modificar valores lá
  //lista2 = ['Intauuu', 'Antoneees', 'Miranteseee']; //daria erro tbm
  print(lista2);

  //com var poderia fazer isso q não daria erro
  var lista3 = const ['Limão', 'Azedo', 'Mandioca'];
  lista3 = ['Xuxu', 'Purê de Batata'];
  lista3.add('Salgadinho');
  print(lista3);
}
