import 'package:random_lunch/src/domain/repositories/recipes_repository.dart';

import '../entities/recipe.dart';

class GetRandomRecipeUseCase {
  final RecipesRepository repository;

  GetRandomRecipeUseCase(this.repository);

  Future<List<Recipe>> call({
    bool limitLicense = false,
    String tags = "",
    int number = 1,
  }) {
    return repository.getRandomRecipe(
        limitLicense: limitLicense, tags: tags, number: number);
  }
}
