// parêmetros é algo que vem de fora e usamos dentro da nossa função.
//parêmtros pertence a função e argumento é o que é passado como parâmetro
//Tipos de parâmetros:

/*
Posicionais Obrigatórios.
1. Nomeados opcionais.
2. Parâmetros "Padrão".
3. Modificador "Required".
*/

// Posicionais obrigatórios:
void main() {
  String nome = "Uva";
  double peso = 100.2;
  String cor = "Verde";
  String sabor = "Doce e cítrica";
  int diasDeColheita = 25;
  bool isMadura = funcEstaMadura(diasDeColheita);

  mostrarMaduroDois(nome, 40, cor: "Roxa");
  // Os posicionais obrigatórios diz que devemos passar os argumentos na ordem que foi definida
  //dentro os argumento dentro da funçaõ. e não podemos omitir um parâmetro por ser obrigatório.
}

mostrarMadura(String nome, int dias) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

//1. Nomeados opcionais:
//parêmetros opcinais podem ir em qualquer ordem na passagem de parâmetros da função chamada.
mostrarMaduroDois(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}
/*
Colocando entre chaves um parâmetro de uma função,
definimos que será um valor nomeado opcional. 
quando definirmos que esse valor será um string, devemos colocar ? para dizer que pode receber tanto
string quando null. isso deve ser feito porque o dart possui um conceito chamado Null Safetely(Proteção contra null),
que não permite que um valor null seja atribuído a um dado do tipo String.
*/

//2. Parâmetros "Padrão".

mostrarMaduroTres(String nome, int dias, {String cor = "Sem cor"}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}
// definimos com o = o valor padrão que um cero parâmetro vai receber.

//3. Modificador "Required"

//se colocarmos um required antes da definição de do tipo de um certo valor
// a ser passador como parâmetro, definimos que aquele valor é obrigatório.

mostrarMaduroQuatro(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}
