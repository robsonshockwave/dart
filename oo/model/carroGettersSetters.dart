/*
1) carroGettersSetters.dart
Classe com construtor recebe a velocidade maxima...
final int velocidadeMaxima;
int _velocidadeAtual;

int acelerar() { ... } // de +5 em +5
int frear() { ... } // de -5 em -5
bool estaNoLimite()

2) mainCarroGettersSetters.dart
main
*/

class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  //colocou a velocidade máxima como opcional e atribuiu uma velocidade maxima a ela, se faz assim
  Carro([this.velocidadeMaxima = 200, this._velocidadeAtual = 0]);
  //como é final o valor só pode ser colocar dentro desse construtor

  int get velocidadeAtual {
    //aqui n precisa do (), e vai acessar como atributo
    return this
        ._velocidadeAtual; //agora no arquivo testeCarro vou conseguir acessar essa váriavel, mas n mudar o seu valor
  }
  //pode-se criar métodos getters que não tenha atributos, por exemplo: tem um produto e ele tem o preço e desconto e que vc quer
  //criar um atributo que é o getter que é o preço com desconto, daí pode fazer o cálculo e retornar um valor e poder acessar ele
  //como se fosse um atributo

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    /* em cima fiz algo que só permite o usuário alterar a velocidade de 5 em 5 */
    if (deltaValido &&
        novaVelocidade >= 0 &&
        novaVelocidade <= velocidadeMaxima) {
      this._velocidadeAtual = novaVelocidade;
    }

    //a sintaxe é void pq o set n retorna nada
    /*this.velocidadeAtual =
        novaVelocidade;*/ //agr no arquivo testeCarro vou conseguir mudar o valor de velocidadeAtual
  }

  int acelerar() {
    //fiz desse jeito, se não, por exemplo, o carro tiver velocidadeMaxima de 203 e a velocidade dele estiver a 202 ele nunca chegará na velocidade máxima
    //então através dessa lógica garantirá que ele chegará na velocidade máxima
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaFreado() {
    return _velocidadeAtual == 0;
  }
}

//GETTERS e SETTERS
//dentro do msm arquivo eu consigo acessar os valores das variaveis com _ na frente, no outro não
//isso serve pra atributos ou métodos
//resolvendo isso devemos criar os métodos get e set

//TESTE \/
main() {
  var c1 = new Carro(300);

  while (!c1.estaNoLimite()) {
    //ou poderia ser c1.estaNoLimite() == false
    print("A velocidade atual é ${c1.acelerar()} Km/h.");
  }

  print("O carro chegou no máximo com velocidade ${c1._velocidadeAtual} Km/h");

  while (c1._velocidadeAtual > 0) {
    print("O carro parou com a velocidade de ${c1.frear()} Km/h.");
  }
  //ou
  /*
  while (!estaFreado()) {
    print("O carro parou com a velocidade de ${c1.frear()} Km/h.");
  }
  */

  c1._velocidadeAtual = 500; //inconsistencia
  print("O carro está parado na velocidade de ${c1.frear()} Km/h.");
}
