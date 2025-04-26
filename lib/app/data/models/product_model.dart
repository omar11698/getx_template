// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  final int id;
  final String name;
  final String description;
  final String price;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    String? price,
    String? imageUrl,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    try {
      return ProductModel(
        id: map['id'] as int,
        name: map['title'].toString(),
        description: map['description'].toString(),
        price: map['price'].toString() ,
        imageUrl: map['image'].toString(),
      );
    } catch (e, stackTrace) {
      throw Exception(
        'Error parsing ProductModel: $e\n and the stack trace is $stackTrace',
      );
    }
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        imageUrl.hashCode;
  }
}
