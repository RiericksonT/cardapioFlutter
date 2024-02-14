import 'package:flutter/material.dart';

class DishesItens extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String image;

  const DishesItens(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});

  void _selectDish(BuildContext context, String dish) {
    // Navigator.of(context).pushNamed(
    //   AppRoutes.DISH_CARTEGORIES,
    //   arguments: category,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectDish(context, name),
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
          title: Text(name),
          subtitle: Text(description),
          trailing: Text(price),
        ),
      ),
    );
  }
}
