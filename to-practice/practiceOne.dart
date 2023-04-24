void main() {
  print(funcInfosFrutas(
      nome: "Uva", peso: 100.2, diasColheita: 25, estaMadura: true));
}

String funcInfosFrutas({
  required String nome,
  required double peso,
  required int diasColheita,
  int diasMadura = 30,
  bool? estaMadura,
}) {
  if (estaMadura != Null) {
    estaMadura = diasColheita >= diasMadura;
  }
  return "A $nome, pesa $peso! gramas ela leva $diasMadura dias para ficar Madura(o). ela está madura? $estaMadura";
}
