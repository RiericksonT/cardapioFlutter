import 'package:cardapio/components/dishesItens.dart';
import 'package:cardapio/data/dummy_data.dart';
import 'package:cardapio/model/categoryEnum.dart';
import 'package:cardapio/model/dishes.dart';
import 'package:flutter/material.dart';

class ChefIndicationsScreen extends StatelessWidget {
  List<Map<String, dynamic>> get _chefIndications {
    return DUMMY_DATA.data.where((dish) {
      return dish['isChefIndication'] == true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: _chefIndications.length,
      itemBuilder: (context, index) {
        return DishesItens(
          Dish(
            name: _chefIndications[index]['name'],
            description: _chefIndications[index]['description'],
            price: _chefIndications[index]['price'],
            image: _chefIndications[index]['image'],
            isChefIndication: _chefIndications[index]['isChefIndication'],
            categoryEnum: Category.values.firstWhere(
              (e) =>
                  e.toString().split('.').last ==
                  _chefIndications[index]['categoryEnum'],
            ),
          ),
        );
      },
    );
  }
}
