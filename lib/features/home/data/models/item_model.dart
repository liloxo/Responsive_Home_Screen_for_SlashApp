import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';

class ItemModel extends Item {
  ItemModel({
    required super.id,
    required super.name,
    required super.price,
    required super.image,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
    };
  }
}
