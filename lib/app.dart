import 'package:flutter/material.dart';
// import 'package:myapp/models/recipe_detail.dart';
import 'screens/recipes/recipes.dart';
import 'screens/details/detail.dart';
import 'style.dart';

const RecipesRoute = '/';
const RecipeDetailRoute = '/recipe_detail';
const PrimaryColor = const Color(0xFF263238);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homemade',
      debugShowCheckedModeBanner: false,
      // home: Recipes(),

      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguements = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case RecipesRoute:
          screen = Recipes();
          break;
        case RecipeDetailRoute:
          screen = Detail(arguements['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      primaryColor: PrimaryColor,
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(headline6: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        headline1: TitleTextStyle,
        bodyText1: BodyTextStyle,
      ),
    );
  }
}
