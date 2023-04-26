void main() {
  Fruta fruta01 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  print(fruta01);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});
}
