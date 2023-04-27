void main() {
  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marrom', true);
  Nozes macadamia = Nozes('Macadamia', 2, 'Amarela', 'Doce', 10, true, 9);

  mandioca.assar();
  macadamia.fazerMassa();
}

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
    print('Colocar no forno');
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

class Frutas extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(String nome, double peso, String cor, this.sabor,
      this.diasDesdeColheita, this.isMadura)
      : super(nome, peso, cor);

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
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

class Nozes extends Frutas {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita, isMadura);

  @override // tudo que estiver abaixo dele pode ser acessado e sobrescrito.
  void fazerMassa() {
    // chamei a função de fazer massa, da implementação de bolo em Frutas e adicionei algo novo nela.
    print('Tirar a casca');
    super.fazerMassa(); // o super chama o parente.
  }
}
