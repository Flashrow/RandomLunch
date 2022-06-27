import 'package:random_lunch/src/domain/repositories/food_repository.dart';

import '../entities/recipe.dart';

class GetRandomRecipeUseCase {
  final FoodRepository repository;

  GetRandomRecipeUseCase(this.repository);

  Future<List<Recipe>> call(
          {bool limitLicense = false, String tags = "", int number = 1}) =>
      repository.getRandomRecipe(
          limitLicense: limitLicense, tags: tags, number: number);
}
