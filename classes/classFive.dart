class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome, pesa $peso gramas e é $cor');
  }
}

// Agora estou implementando Bolo para fazer bolo com legumes
class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto o $nome está cozinhando");
    } else {
      print("Nem precisa cozinhar");
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

// Entrando no mundo das classes abstratas:
// abstrato não é tão manipulável como algo concreto.
// um Exemplo é, vc já comeu uma fruta? a resposta é não.
//Você comeu uma maça, banana e etc... porém fruta é um conceito que engloba banana, maça e etc..

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}

//quando falamos de abstrato falamos de algo que não pode ser mudado ou modelado.
// então funciona da mesma forma quando falamos de classe abstrata.
