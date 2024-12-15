class Pet {
  late int id;
  late String localizacao;
  late String nome;
  late int idade;
  late String sexo;
  late String imagem;

  Pet({required this.localizacao,required this.nome, required this.idade, required this.sexo, required this.imagem});

  Pet.fromJson(Map<String,dynamic> json){

    id = json['id'];
    nome = json['nome'];
    sexo = json['sexo'];
    idade = json['idade'];
    localizacao = json['localizacao'];
    imagem = json['imagem'];
  }

  Map<String,dynamic> toJson(){
    return {
      'nome' : nome,
      'sexo' : sexo,
      'idade' : idade ?? 0,
      'localizacao' : localizacao ?? "N/D",
      'imagem' : imagem ?? "NULL",
    };
  }
}



