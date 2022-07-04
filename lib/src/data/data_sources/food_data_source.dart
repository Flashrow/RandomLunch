import 'package:random_lunch/src/data/models/food_trivia_model.dart';
import 'package:random_lunch/src/data/models/recipes_model.dart';

abstract class FoodDataSource {
  Future<FoodTriviaModel> getRandomFoodTrivia();
  Future<RecipesModel> getRandomRecipe({
    required bool limitLicense,
    required String tags,
    required int number,
  });
}
