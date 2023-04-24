/*
vamos tranformar esse bloco de código: 
void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde";
  String sabor = "Doce e cítrica";
  int diasDeColheita = 40;
  bool isMadura;

  if (diasDeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
}
em uma funçaõ.
*/

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde";
  String sabor = "Doce e cítrica";
  int diasDeColheita = 25;
  bool isMadura = funcEstaMadura(diasDeColheita);

  print(isMadura);
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
// em dart, nós não definimos uma função utilizando a palavra function.
// colocamos antes do nome da função o tipo do dado que vai sair daquela função.
//colocar func no inicio do nome da função é uma boa prática de programação.
