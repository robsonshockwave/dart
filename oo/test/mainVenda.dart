import '../model/produto.dart';
import '../model/venda.dart';
import '../model/cliente.dart';
import '../model/vendaItem.dart';

main() {
  /* PODERIA IR SALVANDO EM VARIAVEIS TBM E DENTRO DO VENDA COLOCAR A VARIAVEL
  var vendaItem1 = VendaItem(
      quantidade: 30,
      produto: Produto(
        codigo: 1,
        nome: 'Lápis Preto',
        preco: 6.00,
        desconto: 0.5,
      ));
  */

  var venda = Venda(
      cliente: Cliente(
        //pode colocar o new na frente se quisesse
        nome: 'Robson de Arruda',
        cpf: '123.456.789-10',
      ),
      itens: <VendaItem>[
        //poderia não colocar o generics <> se quisesse
        //COLOCANDO A VARIAVEL
        //vendaItem1,
        VendaItem(
            quantidade: 30,
            produto: Produto(
              codigo: 1,
              nome: 'Lápis Preto',
              preco: 6.00,
              desconto: 0.5,
            )),
        VendaItem(
            quantidade: 20,
            produto: Produto(
              codigo: 123,
              nome: 'Caderno',
              preco: 20.00,
              desconto: 0.25,
            )),
        VendaItem(
            quantidade: 100,
            produto: Produto(
              codigo: 52,
              nome: 'Borracha',
              preco: 2.00,
              desconto: 0.5,
            )),
      ]);

  print("O valor total da venda é: R\$${venda.valorTotal}");

  print("Nome do primeiro produto é: ${venda.itens[0].produto.nome}");

  print(
      "O nome e CPF do cliente é: ${venda.cliente.nome} ~ ${venda.cliente.cpf}");
}
