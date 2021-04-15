import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/recipe.dart';

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final recipes = Recipe.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: ListView(
        children: recipes
            .map((recipe) => GestureDetector(
                  child: Text(recipe.name),
                  onTap: () => _onRecipeTap(context, recipe.id),
                ))
            .toList(),
      ),
    );
  }

  void _onRecipeTap(BuildContext context, int recipeID) {
    Navigator.pushNamed(context, RecipeDetailRoute,
        arguments: {'id': recipeID});
  }
}
