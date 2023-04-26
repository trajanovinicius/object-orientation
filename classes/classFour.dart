// Continuando os estudos sobre herança:

void main() {
  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marrom', true);
  Frutas banana = Frutas('Banana', 75, 'Amarela', 'Doce', 10, true);
  Nozes macadamia =
      Nozes('Macadamia', 2, 'branco amarelado', 'Doce', 20, true, 35);
  Citricas limao = Citricas('Limão', 5, 'Verde', 'Azedo', 15, true, 9);

  macadamia.printAlimento();
  banana.printAlimento();
  mandioca.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  limao.fazerSuco();
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

class Frutas extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(String nome, double peso, String cor, this.sabor,
      this.diasDesdeColheita, this.isMadura)
      : super(nome, peso, cor);

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }
}

// extends diz que a Classe Legumes vai receber tudo de Alimento.
// métodos também são extendidos para a classe.
class Legumes extends Alimento {
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

  //O super, serve para nos referenciarmos ao pai daquela classe, a classe que está sendo extendida.
}

class Citricas extends Frutas {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita, isMadura);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refrigerante de $nome");
    }
  }
}

class Nozes extends Frutas {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita, isMadura);
}
