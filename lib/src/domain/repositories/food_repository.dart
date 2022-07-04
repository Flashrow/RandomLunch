import 'package:random_lunch/src/domain/entities/food_trivia.dart';

import '../entities/recipes.dart';

abstract class FoodRepository {
  Future<Recipes> getRandomRecipe({
    required bool limitLicense,
    required String tags,
    required int number,
  });

  Future<FoodTrivia> getRandomFoodTrivia();
}
