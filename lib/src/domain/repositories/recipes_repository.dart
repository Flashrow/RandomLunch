import 'package:random_lunch/src/domain/entities/recipe.dart';

abstract class RecipesRepository {
  Future<List<Recipe>> getRandomRecipe({
    bool limitLicense,
    String tags,
    int number,
  });
}
