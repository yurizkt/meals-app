import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/tabs_screen.dart';

import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.pink,
          onPrimary: Colors.pink,
          secondary: Colors.amber,
          onSecondary: Colors.amber,
          error: Colors.redAccent,
          onError: Colors.redAccent,
          surface: Color.fromRGBO(255, 253, 247, 1),
          onSurface: Colors.black,
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
        ),
      ),
      routes: {
        AppRoutes.HOME: (_) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (_) => MealDetailScreen(),
      },
    );
  }
}
