class Pessoa {
  String nome;
  int idade;
  bool isAutenticada;
  String _matricula;

  Pessoa(this.nome, this.idade, this.isAutenticada, this._matricula);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> pessoaMap = {};

    pessoaMap["Nome"] = this.nome;
    pessoaMap["Idade"] = this.idade;
    pessoaMap["Autenticada"] = this.isAutenticada;

    return pessoaMap;
  }

  get retornaMatricula {
    return _matricula;
  }

  
}