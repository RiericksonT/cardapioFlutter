import 'package:cardapio/components/categoryItens.dart';
import 'package:cardapio/model/categoryEnum.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
