
import 'package:ecommerce/features/home/data/models/category_model.dart';

class ProductModel {
  final int? id;
  final String? title;
  final int? price;
  final String? description;
  final List<String>? images;
  final CategoryModel? category;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    description: json["description"],
    images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
    category: json["category"] == null ? null : CategoryModel.fromJson(json["category"]),
  );
}
