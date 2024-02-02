import 'dart:convert';

class Pessoa {
  final String? id;
  final String? nome;
  final double? peso;
  final double? ml;
  final double? copos;
  final double? garrafa;

  Pessoa({
    this.id,
    this.nome,
    this.peso,
    this.ml,
    this.copos,
    this.garrafa,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'peso': peso,
      'ml': ml,
      'copos': copos,
      'garrafa': garrafa,
    };
  }

  factory Pessoa.fromMap(Map<String, dynamic> map) {
    return Pessoa(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      peso: map['peso'] ?? '',
      ml: map['ml'] ?? '',
      copos: map['copos'] ?? '',
      garrafa: map['garrafa'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Pessoa.fromJson(String json) => Pessoa.fromMap(jsonDecode(json));
}
