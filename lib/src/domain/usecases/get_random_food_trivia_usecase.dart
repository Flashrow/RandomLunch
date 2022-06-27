import 'package:random_lunch/src/domain/entities/food_trivia.dart';
import 'package:random_lunch/src/domain/repositories/recipes_repository.dart';

class GetRandomFoodTriviaUseCase {
  final RecipesRepository repository;

  GetRandomFoodTriviaUseCase(this.repository);

  Future<FoodTrivia> call() => repository.getRandomFoodTrivia();
}
