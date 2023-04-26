// iniciamos nossa classe com a palavra chave: class.
//classes sempre vão começar com letras maiuscúlas.

void main() {
  Fruta fruta01 = Fruta("Uva", 40.2, "Roxa", "Doce", 15);

  fruta01.estaMadura(30);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura}); // nosso construtor inicializa nossas propriedades.

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome, foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para comer. Ela está madura? $isMadura");
  } // criamos um método para definir se está madura ou não e depois printa essa informação para nós.
}

// propriedades é onde vamos registrar as características do nosso objeto.
// vamos receber informações externas que vão alimentar nossas propredades, no construtor.
// quando criamos uma função dentro de uma classe, chamamos isso de método.