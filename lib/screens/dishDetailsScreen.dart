import 'package:cardapio/model/dishes.dart';
import 'package:flutter/material.dart';

class DishDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dish = ModalRoute.of(context)?.settings.arguments as Dish;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(dish.name,
                  style: Theme.of(context).textTheme.titleLarge),
              background: Image.network(
                dish.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height / 10),
                      Text(dish.name,
                          style: Theme.of(context).textTheme.displayMedium),
                      Text(dish.description),
                      SizedBox(height: MediaQuery.of(context).size.height / 3),
                      Text(dish.price,
                          style: Theme.of(context).textTheme.displayLarge),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
