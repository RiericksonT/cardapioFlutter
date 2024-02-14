import 'package:cardapio/model/categoryEnum.dart';

class Dish {
  final String name;
  final String description;
  final String price;
  final String image;
  final Category categoryEnum;

  const Dish({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.categoryEnum,
  });
}
