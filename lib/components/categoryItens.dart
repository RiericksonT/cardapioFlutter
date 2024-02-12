import 'package:cardapio/screens/dishPerCategoryScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const categoryItem(this.title, this.color);

  void _selectCategory(BuildContext context, String category) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return DishPerCategoryScreen(category: category);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary,
      onTap: () => _selectCategory(context, title),
      child: Container(
          padding: const EdgeInsets.all(15),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0, 1],
            ),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
