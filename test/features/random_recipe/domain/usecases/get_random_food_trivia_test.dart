import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:random_lunch/src/domain/entities/food_trivia.dart';
import 'package:random_lunch/src/domain/repositories/recipes_repository.dart';
import 'package:random_lunch/src/domain/usecases/get_random_food_trivia_usecase.dart';

import 'get_random_food_trivia_test.mocks.dart';

@GenerateMocks([RecipesRepository])
void main() {
  late RecipesRepository mockRecipesRepository;
  late GetRandomFoodTriviaUseCase randomFoodTriviaUseCase;

  setUp(() {
    mockRecipesRepository = MockRecipesRepository();
    randomFoodTriviaUseCase = GetRandomFoodTriviaUseCase(mockRecipesRepository);
  });

  const FoodTrivia foodTriviaResponse = FoodTrivia(text: "Some food trivia");

  test(
    'should get random recipe from the repository',
    () async {
      when(mockRecipesRepository.getRandomFoodTrivia())
          .thenAnswer((_) async => foodTriviaResponse);
      final result = await randomFoodTriviaUseCase();
      expect(result, foodTriviaResponse);
      verify(mockRecipesRepository.getRandomFoodTrivia());
      verifyNoMoreInteractions(mockRecipesRepository);
    },
  );
}
