import 'recipe_detail.dart';

class Recipe {
  String name;
  String image;
  final List<RecipeDetail> details;

  Recipe({
    this.name,
    this.image,
    this.details,
  });
}
