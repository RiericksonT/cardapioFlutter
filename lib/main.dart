import 'package:cardapio/screens/categoriesScreen.dart';
import 'package:cardapio/screens/dishDetailsScreen.dart';
import 'package:cardapio/screens/dishPerCategoryScreen.dart';
import 'package:cardapio/utils/appRoutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        AppRoutes.HOME: (context) => CategoriesScreen(),
        AppRoutes.DISH_CARTEGORIES: (context) => DishPerCategoryScreen(),
        AppRoutes.DISH_DETAIL: (context) => DishDetailsScreen(),
      },
      title: 'Cardapio',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: const MaterialColor(0xFF3C8B3E, {
            50: Color(0xFFE8F5E9),
            100: Color(0xFFC8E6C9),
            200: Color(0xFFA5D6A7),
            300: Color(0xFF81C784),
            400: Color(0xFF66BB6A),
            500: Color(0xFF4CAF50),
            600: Color(0xFF43A047),
            700: Color(0xFF388E3C),
            800: Color(0xFF2E7D32),
            900: Color(0xFF1B5E20),
          })).copyWith(secondary: Colors.amber),
          useMaterial3: true,
          fontFamily: 'AmaticSC',
          primarySwatch: Colors.green,
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'AmaticSC',
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow,
                ),
                titleLarge: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'AmaticSC',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                displayMedium: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'AmaticSC',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                displayLarge: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'AmaticSC',
                    fontWeight: FontWeight.w700,
                    color: Colors.yellow),
              )),
    );
  }
}
