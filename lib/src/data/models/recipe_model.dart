import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_lunch/src/domain/entities/recipe.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@Freezed()
class RecipeModel with _$RecipeModel implements Recipe {
  const factory RecipeModel({
    required int id,
    required String title,
    required String image,
    required String imageType,
    required int servings,
    required int readyInMinutes,
    required String license,
    required String sourceName,
    required String sourceUrl,
    required String spoonacularSourceUrl,
    required int aggregateLikes,
    required double healthScore,
    required double spoonacularScore,
    required double pricePerServing,
    required bool cheap,
    required String creditsText,
    required List<String> cuisines,
    required bool dairyFree,
    required List<String> diets,
    required String gaps,
    required bool glutenFree,
    required String instructions,
    required bool ketogenic,
    required bool lowFodmap,
    required List<String> occasions,
    required bool sustainable,
    required bool vegan,
    required bool vegetarian,
    required bool veryHealthy,
    required bool veryPopular,
    required bool whole30,
    required int weightWatcherSmartPoints,
    required List<String> dishTypes,
    required String summary,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
