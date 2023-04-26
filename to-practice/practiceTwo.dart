void main() {
  DadosPessoais dados =
      DadosPessoais('Vinicius', 17, 'Solteiro', 'Gerenciador de caixa');
  dados.verificadorIdade(17);
  InfosParaTrabalho trabalho =
      InfosParaTrabalho("Gustavo", 18, "casado", "Administrador");
  trabalho.verificadorCargo("Software engineer");
}

class DadosPessoais {
  String nome;
  int idade;
  String razaoSocial;
  String cargo;

  DadosPessoais(this.nome, this.idade, this.razaoSocial, this.cargo);

  void verificadorIdade(idade) {
    if (idade < 18) {
      print('Você não tem idade para trabalhar');
    } else {
      print('Você já pode trabalhar');
    }
  }
}

class InfosParaTrabalho extends DadosPessoais {
  InfosParaTrabalho(String nome, int idade, String razaoSocial, String cargo)
      : super(nome, idade, razaoSocial, cargo);
  void verificadorCargo(cargo) {
    if (cargo != "Software engineer") {
      print(
          'você trabalha com $cargo, não é o que estamos procurando neste momento');
    } else {
      print('Você pode preencher está vaga');
    }
    ;
  }
}
