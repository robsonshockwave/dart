class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto; //pode colocar o = 0 aqui, caso não queira que inicialize ali

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  //aqui vai gerar um atributo, que não é necessariamente um atributo e sim um getter, mas que for acessar não vai saber que é um getter
  //vai gerar um atributo que vai ser calculado, mas de fato não é um atributo da classe
  double get precoComDesconto {
    return (1 - desconto) * preco;
  }
}
