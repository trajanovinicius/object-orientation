void main() {}

class Fruta implements Suco {
  String nome;
  String cor;

  Fruta(this.nome, this.cor);

  @override
  void adicionarAcucar() {
    // TODO: implement adicionarAcucar
    print('Adicione açucar');
  }

  @override
  void baterFruta() {
    // TODO: implement baterFruta
    print('Insira a fruta para bater');
  }

  @override
  void escolherFruta() {
    // TODO: implement escolherFruta
    print('Escolha a fruta para fazer o suco');
  }
}

abstract class Suco {
  void escolherFruta();
  void baterFruta();
  void adicionarAcucar();
}
