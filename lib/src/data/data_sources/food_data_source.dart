import 'package:random_lunch/src/data/models/food_trivia_model.dart';
import 'package:random_lunch/src/data/models/recipe_model.dart';

abstract class FoodDataSource {
  Future<FoodTriviaModel> getRandomFoodTrivia();
  Future<List<RecipeModel>> getRandomRecipe({
    required bool limitLicense,
    required String tags,
    required int number,
  });
}
