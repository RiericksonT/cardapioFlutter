import 'package:cardapio/components/categoryItens.dart';
import 'package:cardapio/model/categoryEnum.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio', style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: Category.values.map((category) {
          return categoryItem(category.toString().split('.').last,
              const Color.fromARGB(255, 0, 75, 19));
        }).toList(),
      ),
    );
  }
}
