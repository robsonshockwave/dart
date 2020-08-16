main() {
  //Exemplo 1
  print('Teste'); //print é uma função
  executarPor1(10, print, 'Muito legal');

  //Exemplo 2
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };
  //var meuPrint = (String valor) => valor;
  int tamanho = executarPor2(10, meuPrint, 'Legal legal');
  print('O tamanho da string é $tamanho');
}

//Exemplo 1
void executarPor1(int qtd, Function(String) fn, String valor) {
  for (int i = 0; i < qtd; i++) {
    fn(valor);
  }
} //o Function(String) é o print(), ou seja, não retorna nada

//Exemplo 2
int executarPor2(int qtd, String Function(String) fn, String valor) {
  String textoCompleto = ''; //string vazia
  for (int i = 0; i < qtd; i++) {
    textoCompleto += fn(
        valor); //aqui tem q ter uma outra string recebendo a função, n pode ser o valor recebendo ele msm, se não toda hora iria concatenar
  }
  return textoCompleto.length;
} //o String Function(String) é uma função que retorna um valor string
