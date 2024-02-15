import 'package:cardapio/model/dishes.dart';
import 'package:cardapio/utils/appRoutes.dart';
import 'package:flutter/material.dart';

class DishesItens extends StatelessWidget {
  final Dish dish;

  const DishesItens(this.dish);

  void _selectDish(BuildContext context, Dish dish) {
    Navigator.of(context).pushNamed(
      AppRoutes.DISH_DETAIL,
      arguments: dish,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectDish(context, dish),
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(dish.image),
          ),
          title: Text(dish.name),
          subtitle: Text(dish.description),
          trailing: Text(dish.price),
        ),
      ),
    );
  }
}
