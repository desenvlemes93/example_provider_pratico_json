import 'dart:convert';

class ProductModel {
  int id;
  String name;
  double preco;
  ProductModel({
    required this.id,
    required this.name,
    required this.preco,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'preco': preco,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      preco: map['preco']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() => 'ProductModel(id: $id, name: $name, preco: $preco)';
}
