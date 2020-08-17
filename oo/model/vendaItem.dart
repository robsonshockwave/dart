import 'produto.dart';

//é como se fosse o carrinho
class VendaItem {
  Produto
      produto; //uma COMPOSIÇÃO, pegando a classe Produto e associando com essa
  int quantidade; //quantos itens de um determinado produto tem no carrinho
  double _preco; //o preço total dos produtos

  VendaItem({this.produto, this.quantidade});
  /*aqui até poderia passar o preco, mas vai a priori pegar o preço do produto, pq se tá criando um novo item de venda, por padrão
  ele vai pegar o preço do produto*/

  double get preco {
    if (produto != null && _preco == null) {
      //se alguem definiu o valor de produto
      _preco = produto
          .precoComDesconto; //poderia fazer isso no próprio construtor vendaItem({})
    }
    return _preco;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
