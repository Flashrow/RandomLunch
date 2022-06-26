import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:random_lunch/src/domain/entities/recipe.dart';
import 'package:random_lunch/src/domain/repositories/recipes_repository.dart';
import 'package:random_lunch/src/domain/usecases/get_random_recipe_usecase.dart';

import 'get_random_recipe_test.mocks.dart';

@GenerateMocks([RecipesRepository])
void main() {
  late RecipesRepository mockRecipesRepository;
  late GetRandomRecipeUseCase randomRecipeUseCase;

  setUp(() {
    mockRecipesRepository = MockRecipesRepository();
    randomRecipeUseCase = GetRandomRecipeUseCase(mockRecipesRepository);
  });

  const randomRecipe = Recipe(
    id: 1,
    title: "Test recipe",
    image: "www.google.com",
    imageType: "jpg",
    servings: 1,
    readyInMinutes: 45,
    license: "MIT",
    sourceName: "source",
    sourceUrl: "www.source.com",
    spoonacularSourceUrl: "www.source.spoonacular.com",
    aggregateLikes: 311,
    healthScore: 94.2,
    spoonacularScore: 12.3,
    pricePerServing: 12.5,
    cheap: true,
    creditsText: "credits",
    cuisines: ["cusine", "cusine"],
    dairyFree: true,
    diets: ["vegan"],
    gaps: "gap",
    glutenFree: true,
    instructions: "instructions",
    ketogenic: false,
    lowFodmap: false,
    occasions: ["occasion"],
    sustainable: true,
    vegan: false,
    vegetarian: false,
    veryHealthy: false,
    veryPopular: true,
    whole30: false,
    weightWatcherSmartPoints: 9,
    dishTypes: ["dish"],
    summary: "summary",
  );
  const List<Recipe> recipeResponse = [randomRecipe];
  const int numberOfRecipes = 1;
  const String tags = "";
  const bool limitLicense = false;

  test(
    'should get random recipe from the repository',
    () async {
      when(mockRecipesRepository.getRandomRecipe(
              number: numberOfRecipes, tags: tags, limitLicense: limitLicense))
          .thenAnswer((_) async => recipeResponse);
      final result = await randomRecipeUseCase(
          number: numberOfRecipes, tags: tags, limitLicense: limitLicense);
      expect(result, recipeResponse);
      verify(mockRecipesRepository.getRandomRecipe(
          number: numberOfRecipes, tags: tags, limitLicense: limitLicense));
      verifyNoMoreInteractions(mockRecipesRepository);
    },
  );
}
