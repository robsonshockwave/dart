import './cliente.dart';
import './vendaItem.dart';

class Venda {
  Cliente cliente;
  List<VendaItem>
      itens; //como vai receber uma lista de itens, aqui precisa colocar Lista<nome da classe que vai associar>

  Venda(
      {this.cliente,
      this.itens =
          const []}); //pra inicializar com uma lista vazia aqui precisa colocar o const antes do []

  //método que vai definir qual é o preço total de venda, que vai percorrer cada um dos elementos, vai somar o valor deles,
  //pegando o preço do item vezes a quantidade, vai fazer a soma e devolver o valor total
  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((t, a) => t + a);
  }
}
