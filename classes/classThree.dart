// vamos falar agora sobre herança:
// se não entendermos o conceito de herança ao criar novas classes, repetimos muitos parâmetros.

void main() {}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);
}

class Legumes {
  String nome;
  String cor;
  String caracteristica;
  bool isPrecisaCozinhar;

  Legumes(this.nome, this.cor, this.caracteristica, this.isPrecisaCozinhar);
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita,
      this.isMadura, this.nivelAzedo);
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.isMadura,
      this.porcentagemOleoNatural);
}
