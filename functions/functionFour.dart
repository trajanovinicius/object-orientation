// Agora vamos entender o conceito de escopo:

void main() {
  print(funcQuantosDiasMadura());
}

funcQuantosDiasMadura() {
  int diasDesdeColheita = 40;
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasDesdeColheita - diasParaMadura;
  return quantosDiasFaltam;
}
// tudo que estiver dentro das chaves pode ser usado dentro da chave.
// não podemos usar nada que é criado dentro de uma função em uma outra função.
// porque todos os dados estão presos dentro de do escopo daquela função.