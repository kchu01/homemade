import './recipe_detail.dart';

class Recipe {
  final int id;
  final String name;
  final String imagePath;
  final List<RecipeDetail> details;

  Recipe(this.id, this.name, this.imagePath, this.details);

  static List<Recipe> fetchAll() {
    return [
      Recipe(1, 'Pho', 'images/pho.jpg', [
        RecipeDetail('Details', 'Warm relaxing bowl of pho.'),
        RecipeDetail('Directions', 'Step 1: boil a large pot of water'),
      ]),
      Recipe(2, 'Asada Tacos', 'images/taco.jpg', [
        RecipeDetail('Details', 'Delicious asada tacos on corn tortillas.'),
        RecipeDetail(
            'Directions', 'Step 1: eat 100 tacos because they are so yummy.'),
      ]),
      Recipe(3, 'Ramen', 'images/ramen.jpg', [
        RecipeDetail('Details', 'Warm relaxing bowl of ramen.'),
        RecipeDetail('Directions', 'Step 1: just slurp.'),
      ]),
      Recipe(4, 'Banh Xeo', 'images/banhxeo.jpg', [
        RecipeDetail('Details', 'Flaky goodness.'),
        RecipeDetail('Directions',
            'Step 1: realize you ate 3 already and contemplate eating another.'),
      ]),
    ];
  }

  static Recipe fetchByID(int recipeID) {
    List<Recipe> recipes = Recipe.fetchAll();
    for (var i = 0; i < recipes.length; i++) {
      if (recipes[i].id == recipeID) {
        return recipes[i];
      }
    }
    return null;
  }
}
