import 'package:cardapio/model/dishes.dart';
import 'package:flutter/material.dart';

class DishPerCategoryScreen extends StatelessWidget {
  final String category;

  DishPerCategoryScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Dish name"),
            subtitle: Text("Dish description"),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(

              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
