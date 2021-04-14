import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/recipe.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recipes = Recipe.fetchAll();
    final recipe = recipes.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(recipe.imagePath),
            TextSection("Recipe name", "subtitle"),
            TextSection("Ingredients", "what you will need"),
            TextSection("Directions", "step 1: boil a large pot of water"),
          ]),
    );
  }
}
