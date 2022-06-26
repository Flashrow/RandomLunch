import 'package:random_lunch/src/domain/entities/recipe.dart';

abstract class RecipesRepository {
  Future<List<Recipe>> getRandomRecipe({
    required bool limitLicense,
    required String tags,
    required int number,
  });
}
