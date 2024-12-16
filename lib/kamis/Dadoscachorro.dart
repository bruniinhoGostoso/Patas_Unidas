class Dadoscachorro {
  late String nome;
  late String id;
  late String caracteristica;
  late String imagem;
  Dadoscachorro({required this.nome, required this.caracteristica,
    required this.imagem});
  Dadoscachorro.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    caracteristica = json['caracteristica'];
    imagem = json['imagem'];
  }
  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'caracteristica': caracteristica,
      'imagem': imagem,
    };
  }
}
