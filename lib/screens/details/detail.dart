import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/recipe.dart';

class Detail extends StatelessWidget {
  final int _recipeID;

  Detail(this._recipeID);

  @override
  Widget build(BuildContext context) {
    final recipe = Recipe.fetchByID(_recipeID);
    // final recipe = recipes.first; // first is similar to recipe[0]

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(recipe.imagePath),
          ]..addAll(textSections(recipe))),
    );
  }

  List<Widget> textSections(Recipe recipe) {
    return recipe.details
        .map((detail) => TextSection(detail.title, detail.text))
        .toList();
  }
}
