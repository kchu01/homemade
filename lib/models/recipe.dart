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
        RecipeDetail('Details',
            'A Vietnamese soup consisting of broth, rice noodles, herbs, and meat. Pho is considered the national dish of Vietnam.'),
        RecipeDetail('Ingredients',
            '- 1 large onion\n- 3 inch pieces of ginger\n-spices (star anise, whole cloves, cinnamon, cardamon, coriander)\n- 8 cups of beef broth\n- rock sugar\n- fish sauce'),
        RecipeDetail('Directions',
            'Step 1: boil a large pot of water.\nStep 2: Add spices to the pot.'),
      ]),
      Recipe(2, 'Carne Asada Tacos', 'images/taco.jpg', [
        RecipeDetail('Details', 'Delicious skirt steak on corn tortillas.'),
        RecipeDetail('Ingredients',
            '- 2 lbs skirt steak\n- corn tortillas\n- cilantro and lime'),
        RecipeDetail(
            'Directions', 'Step 1: eat 100 tacos because they are so yummy.'),
      ]),
      Recipe(3, 'Ramen', 'images/ramen.jpg', [
        RecipeDetail('Details',
            'A Japanese noodle dish consisting of wheat noodles, meat or fish flavored broth, and toppings such as chashu.'),
        RecipeDetail('Ingredients',
            '- broth flavor of your choice\n- wheat noodles\n- chashu'),
        RecipeDetail('Directions', 'Step 1: combine and slurp.'),
      ]),
      Recipe(4, 'Banh Xeo', 'images/banhxeo.jpg', [
        RecipeDetail('Details',
            'Crispy, flakey stuffed rice crepe that is popular in Vietnam.'),
        RecipeDetail('Ingredients',
            '- banh xeo flour pack with tumeric\n- toppings of your choice\n- fish sauce'),
        RecipeDetail('Directions',
            'Step 1: Pour a ladel of batter in the pan and wait for it to fry.\nStep 2: Add the toppings and fold the crepe in half\nStep 3: Pour fish sauce and enjoy!'),
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
