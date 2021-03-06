import 'package:random_lunch/src/data/data_sources/food_data_source.dart';
import 'package:random_lunch/src/data/models/food_trivia_model.dart';
import 'package:random_lunch/src/domain/repositories/food_repository.dart';

import '../models/recipes_model.dart';

class FoodRepositoryImplementation implements FoodRepository {
  FoodDataSource remoteFoodDatasource;

  FoodRepositoryImplementation(this.remoteFoodDatasource);

  @override
  Future<FoodTriviaModel> getRandomFoodTrivia() =>
      remoteFoodDatasource.getRandomFoodTrivia();

  @override
  Future<RecipesModel> getRandomRecipe(
          {required bool limitLicense,
          required String tags,
          required int number}) =>
      remoteFoodDatasource.getRandomRecipe(
          limitLicense: limitLicense, tags: tags, number: number);
}
