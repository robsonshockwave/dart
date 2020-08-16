//Código não funciona, é apenas para abstração 

//EXEMPLO 1
funcao(p1, p2) {
  // 10s -> p1
  setenca #01
  setenca #02
  setenca #03

  // 1s -> p2
  setenca #04
  setenca #05
}

funcao(3, 17) // 11s
funcao(3, 39) // 11s
funcao(3, 92) // 11s

Total: 33s

//EXEMPLO 2
funcaoFora(p1) {
  // 10s -> p1
  setenca #01
  setenca #02
  setenca #03

  return (p2) {
    // 1s -> p2
    setenca #04
    setenca #05
    }
}

funcaoFora(3)(17) // 11s
funcaoFora(3)(39) // 11s
funcaoFora(3)(92) // 11s

Total: 33s

//EXEMPLO 3 - OTIMIZADO
funcaoFora(p1) {
  // 10s -> p1
  setenca #01
  setenca #02
  setenca #03

  return (p2) {
    // 1s -> p2
    setenca #04
    setenca #05
    }
}

var funcaoForaComParam3 = funcaoFora(3) //10s
funcaoForaComParam3(17) // 1s
funcaoForaComParam3(39) // 1s
funcaoForaComParam3(92) // 1s

Total: 13s