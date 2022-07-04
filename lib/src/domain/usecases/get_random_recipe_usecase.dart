import 'package:injectable/injectable.dart';
import 'package:random_lunch/src/domain/repositories/food_repository.dart';

import '../entities/recipes.dart';

@injectable
class GetRandomRecipeUseCase {
  final FoodRepository repository;

  GetRandomRecipeUseCase(this.repository);

  Future<Recipes> call(
          {bool limitLicense = false, String tags = "", int number = 1}) =>
      repository.getRandomRecipe(
          limitLicense: limitLicense, tags: tags, number: number);
}
