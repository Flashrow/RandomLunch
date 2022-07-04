import 'package:injectable/injectable.dart';
import 'package:random_lunch/src/domain/entities/food_trivia.dart';
import 'package:random_lunch/src/domain/repositories/food_repository.dart';

@injectable
class GetRandomFoodTriviaUseCase {
  final FoodRepository repository;

  GetRandomFoodTriviaUseCase(this.repository);

  Future<FoodTrivia> call() => repository.getRandomFoodTrivia();
}
