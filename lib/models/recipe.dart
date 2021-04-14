import './recipe_detail.dart';

/// Represents a tourism location a user can visit.
class Recipe {
  final String name;
  final String imagePath;
  final List<RecipeDetail> details;

  Recipe(this.name, this.imagePath, this.details);

  static List<Recipe> fetchAll() {
    return [
      Recipe('Pho', 'images/pho.jpg', [
        RecipeDetail('Details', 'Warm relaxing bowl of pho.'),
        RecipeDetail('Directions', 'Step 1: boil a large pot of water'),
      ]),
    ];
  }
}
