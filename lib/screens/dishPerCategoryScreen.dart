import 'package:cardapio/components/dishesItens.dart';
import 'package:cardapio/data/dummy_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DishPerCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as String;

    final dishsCategory = DUMMY_DATA.data.where((dish) {
      return dish['categoryEnum'] == category;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: dishsCategory.length,
        itemBuilder: (context, index) {
          return DishesItens(
              name: dishsCategory[index]['name'],
              description: dishsCategory[index]['description'],
              price: dishsCategory[index]['price'],
              image: dishsCategory[index]['image']);
        },
      ),
    );
  }
}
